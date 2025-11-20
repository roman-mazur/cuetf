#!/usr/bin/env bash

set -e

go test -v ../gen -run TestExportBigSample -args -gen-sample
cd testdata/sample
cue import -p sample -l "input:" -f input.json
