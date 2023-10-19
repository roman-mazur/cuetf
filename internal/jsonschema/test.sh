#!/usr/bin/env bash

function sample() {
  name=$1

  cue export -e "samples.$name" | tee mytest/$name.json | cue import -p mytest -f -o mytest/$name.cue -l "#$name:" jsonschema: -
}

sample aws_instance
#sample aws_acm_certificate
