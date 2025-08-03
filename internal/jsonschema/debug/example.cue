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

debug: blocks: awsExtract: input: {
	attributes: {
		access_key: {
			type: "string"
			description: """
				The access key for API operations. You can retrieve this
				from the 'Security & Credentials' section of the AWS console.
				"""
			description_kind: "plain"
			optional:         true
		}
		allowed_account_ids: {
			type: ["set", "string"]
			description_kind: "plain"
			optional:         true
		}
	}
	block_types: {
		assume_role: {
			nesting_mode: "list"
			block: {
				attributes: {
					duration: {
						type:             "string"
						description:      "The duration, between 15 minutes and 12 hours, of the role session. Valid time units are ns, us (or µs), ms, s, h, or m."
						description_kind: "plain"
						optional:         true
					}
					policy_arns: {
						type: ["set", "string"]
						description:      "Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed."
						description_kind: "plain"
						optional:         true
					}
					tags: {
						type: ["map", "string"]
						description:      "Assume role session tags."
						description_kind: "plain"
						optional:         true
					}
				}
				description_kind: "plain"
			}
		}
	}
}
