#!/usr/bin/env bash

set -e

function sample() {
  name=$1

  cue export -e "samples.aws.$name" | tee samples/${name}_gen.json | cue import -p samples -f -o samples/${name}_gen.cue -l "#$name:" jsonschema: -
}

mkdir -p samples 2>/dev/null

sample aws_instance
sample aws_acm_certificate

cue export -e examplesCode --out=text > samples/examples.cue
(cd samples && cue export)
