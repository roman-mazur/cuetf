#!/usr/bin/env bash

set -e

function import() {
  provider=$1
  name=$2

  (cd "test/$provider" && mkdir -p samples 2>/dev/null && \
      cue export -e "importSamples.$provider.$name.#block" > samples/input_${name}.json && \
      cue export -e "importSamples.$provider.$name" | \
      tee samples/${name}_gen.json | \
      cue import -p samples -f -o samples/${name}_gen.cue -l "#$name:" jsonschema: -)
}

function example() {
  provider=$1

  (cd "test/$provider" && \
      cue export -e exampleCode --out=text > samples/examples.cue && \
      (cd samples && cue export))
}

function testAws() {
  import aws aws_instance
  import aws aws_acm_certificate
  import aws aws_security_group
  import aws aws_appintegrations_event_integration
  example aws
}

function testGithub() {
  import github github_issue
  example github
}

echo "Checking github samples..."
testGithub
echo "Checking aws samples..."
testAws

echo "OK"
