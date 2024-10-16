package debug

import "github.com/roman-mazur/cuetf/internal/jsonschema"

_case: string | *"ok" @tag(case)

if _case == "error" {
	debug: input: ["list", ["object", {
		branch: "string"
		path:   "string"
		some_list: ["list", ["list", "string"]]
	}]]
}
if _case == "ok" {
	debug: input: ["list", ["object", {
		branch: "string"
		path:   "string"
		some_list: ["list", "string"]
	}]]
}

debug: output: jsonschema.#fieldTransform & {#type: debug.input}
