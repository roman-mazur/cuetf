#!/usr/bin/env bash

set -e

mkdir -p out 2>/dev/null

function terraUpdate() {
  mkdir -p schema 2>/dev/null

  terraform init -upgrade
  terraform providers schema -json > schema/schema.json
  cue import -f -p schema schema/schema.json -o schema/schema.cue
  (cd schema && cue vet) || (echo "New schema is not compliant with current transforms" && exit 1)
}

function process() {
  provider=$1
  version=$(go run ./internal/cmd/pversion "$provider")
  if [ -z "$version" ]; then
    echo "failed to obtain provider version"
    exit 1
  fi

  echo "Processing $provider ($version)..."
  (cd "$provider/internal" && terraUpdate "$provider")

  exclude=$(cat "$provider/exclude" 2>/dev/null || echo "")
  if [ -n "$exclude" ]; then
    exclude="-e $exclude"
  fi
  go run ./cmd/gen $exclude --version="$version" "$provider/internal/schema/schema.json" . 2> logs/"$provider-log.txt" &
  defs_pid=$!

  (cd "$provider" && ([ -f import.sh ] && ./import.sh || exit 0))

  echo "Waiting for the schemas import to finish..."
  wait $defs_pid
  echo "DONE: $provider"

  if grep -q ERROR "logs/$provider-log.txt"; then
    echo "Update generated $(grep -c ERROR "logs/$provider-log.txt") errors"
    exit 1
  fi
}

input_provider=$1

if [ -z "$input_provider" ]; then
  for corpus in */internal/corpus.tf; do
    provider="${corpus%%/*}"
    case "$provider" in
      aws|google|azurerm) echo "Skipping $provider (too large for automated runs)" ;;
      *) process "$provider" ;;
    esac
  done
else
  process "$input_provider"
fi
