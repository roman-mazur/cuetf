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
			kubernetes: {
				nested_type: {
					attributes: {
						exec: {
							nested_type: {
								attributes: {
									env: {
										type: ["map", "string"]
										description:      "Environment variables for the exec plugin"
										description_kind: "plain"
										optional:         true
									}
								}
								nesting_mode: "single"
							}
							description:      "Exec configuration for Kubernetes authentication"
							description_kind: "plain"
							optional:         true
						}
					}
					nesting_mode: "single"
				}
				description:      "Kubernetes Configuration"
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
