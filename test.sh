#!/usr/bin/env bash

set -e

function testProvider() {
    name=$1
    cd "$name/internal/test" && cue export -e output --out=text
}

testProvider aws
