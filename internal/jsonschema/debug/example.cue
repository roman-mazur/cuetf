package debug

import (
	"github.com/roman-mazur/cuetf/internal/jsonschema"
)

_case: string | *"ok" @tag(case)

debug: [type=string]: [name=string]: close({
	input:  _
	output: _
})

debug: fields: [string]: {
	input: _
	output: (jsonschema.#fieldTransform & {#type: input}).out
}

debug: blocks: [string]: {
	input: _
	output: jsonschema.#SchemaTransform & {#block: input, #name: "test"}
}

debug: fields: {
	primitive: {
		input: "number"
		output: type: "number"
	}

	simpleList: input: ["list", "bool"]
	listOfSets: input: ["list", ["set", "string"]]

	listOfObjects: input: ["list", ["object", {
		foo: "bool"
	}]]

	listOfObjects: input: ["list", ["object", {
		foo: "bool"
	}]]

	listOfComplexObjects: input: ["list", ["object", {
		foo: "bool"
		some_list: ["set", "number"]
	}]]

	if _case == "error" {
		listOfLists: input: ["list", ["list", "string"]]
	}
}

debug: blocks: helmExtract: {
	input: {
		attributes: {
			burst_limit: {
				type:             "number"
				description:      "Helm burst limit. Increase this if you have a cluster with many CRDs"
				description_kind: "plain"
				optional:         true
			}
			experiments: {
				nested_type: {
					attributes: manifest: {
						type:             "bool"
						description:      "Enable full diff by storing the rendered manifest in the state."
						description_kind: "plain"
						optional:         true
					}
					nesting_mode: "single"
				}
				description:      "Enable and disable experimental features."
				description_kind: "plain"
				optional:         true
			}
			helm_driver: {
				type:             "string"
				description:      "The backend storage driver. Values are: configmap, secret, memory, sql"
				description_kind: "plain"
				optional:         true
			}
			registries: {
				nested_type: {
					attributes: {
						url: {
							type:             "string"
							description:      "OCI URL in form of oci://host:port or oci://host"
							description_kind: "plain"
							required:         true
						}
					}
					nesting_mode: "list"
				}
				description:      "RegistryClient configuration."
				description_kind: "plain"
				optional:         true
			}
		}
		description:      "Schema to define attributes that are available in the provider"
		description_kind: "plain"
	}
}
