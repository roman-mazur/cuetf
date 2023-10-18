#!/usr/bin/env bash

set -e

function testProvider() {
    name=$1
    cd "$name/internal/test" && cue export -e output --out=text
}

inputProvider=$1
if [ -z "$inputProvider" ]; then
  testProvider aws
else
  testProvider "$inputProvider"
fi
