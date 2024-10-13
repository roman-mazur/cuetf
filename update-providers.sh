#!/usr/bin/env bash

set -e

mkdir -p out 2>/dev/null

function terraUpdate() {
  mkdir -p schema 2>/dev/null

  terraform init
  terraform providers schema -json > schema/schema.json
  cue import -f -p schema schema/schema.json -o schema/schema.cue
}

function process() {
  provider=$1
  echo "Processing $provider..."
  (cd "$provider/internal" && terraUpdate "$provider")

  go run ./cmd/gen "$provider/internal/schema/schema.json" . 2> out/"$provider-log.txt" &
  defs_pid=$!

  (cd "$provider" && ([ -f import.sh ] && ./import.sh || exit 0))

  echo "Waiting for the schemas import to finish..."
  wait $defs_pid
  echo "DONE: $provider"
}

input_provider=$1

if [ -z "$input_provider" ]; then
  process aws
  process helm
  process cloudflare
else
  process "$input_provider"
fi
