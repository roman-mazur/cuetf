package embedassets

import "embed"

// InternalCUE contains internal CUE packages required by cmd/embed.
//
//go:embed tf/*.cue tfjson/*.cue jsonschema/*.cue
var InternalCUE embed.FS
