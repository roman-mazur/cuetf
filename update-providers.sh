#!/usr/bin/env bash

set -e

function terraUpdate() {
  mkdir -p .tmp 2>/dev/null
  mkdir -p schema 2>/dev/null

  terraform init
  terraform providers schema -json > .tmp/schema.json
  cue import -f -p schema .tmp/schema.json -o schema/schema.cue
  rm -rf .tmp
}

function process() {
  provider=$1
  (cd "$provider/internal" && terraUpdate "$provider")
  ./test.sh "$provider" > /dev/null || (echo "TESTS FAILED: $provider" && exit 1)

  (cd "$provider" && cue make-schemas && cue fmt ./...)

  (cd "$provider" && ([ -f import.sh ] && ./import.sh || exit 0))
}

process aws
