package debug

import "github.com/roman-mazur/cuetf/internal/jsonschema"

_case: string | *"easy" @tag(case)

cases: {
	// The problem: https://github.com/cue-lang/cue/discussions/2665#discussioncomment-7402853
	hard: {
		input: ["list", ["object", {
			branch: "string"
			path:   "string"
			some_list: ["list", ["list", "string"]]
		}]]
	}

	easy: {
		input: ["list", ["object", {
			branch: "string"
			path:   "string"
			some_list: ["list", "string"]
		}]]
	}
}

output: jsonschema.#fieldTransform & {#type: cases[_case].input}
