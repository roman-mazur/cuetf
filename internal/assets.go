package embedassets

import "embed"

// InternalCUE contains internal CUE packages required by cmd/embed.
//
//go:embed jsonschema/*.cue
var InternalCUE embed.FS
