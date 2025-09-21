#!/usr/bin/env bash

set -e

mkdir -p out 2>/dev/null

function terraUpdate() {
  mkdir -p schema 2>/dev/null

  terraform init
  terraform providers schema -json > schema/schema.json
  cue import -f -p schema schema/schema.json -o schema/schema.cue
  (cd schema && cue vet) || (echo "New schema is not compliant with current transforms" && exit 1)
}

function process() {
  provider=$1
  echo "Processing $provider..."
  (cd "$provider/internal" && terraUpdate "$provider")

  go run ./cmd/gen "$provider/internal/schema/schema.json" . 2> logs/"$provider-log.txt" &
  defs_pid=$!

  (cd "$provider" && ([ -f import.sh ] && ./import.sh || exit 0))

  echo "Waiting for the schemas import to finish..."
  wait $defs_pid
  echo "DONE: $provider"

  errors_cnt=$(grep -c ERROR < "logs/$provider-log.txt")
  if [ "$errors_cnt" != "0" ]; then
    echo "Update generated $errors_cnt errors"
    exit 1
  fi
}

input_provider=$1

if [ -z "$input_provider" ]; then
  process aws
  process azurerm
  process cloudflare
  process elasticstack
  process github
  process google
  process helm
else
  process "$input_provider"
fi
