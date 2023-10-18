#!/usr/bin/env bash

set -e

function terraUpdate() {
  provider=$1
  schemaPkgName="schema$provider"
  schemaPath="internal/$schemaPkgName"

  mkdir -p .tmp 2>/dev/null
  mkdir -p "$schemaPath" 2>/dev/null

  terraform init
  terraform providers schema -json > .tmp/schema.json
  cue import -f -p "$schemaPkgName" .tmp/schema.json -o "$schemaPath/schema.cue"

  rm -rf .tmp
}

function process() {
  provider=$1
  (cd "$provider" && terraUpdate "$provider" && ([ -f import.sh ] && ./import.sh || exit 0))
}

process aws
