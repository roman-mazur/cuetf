package res

import "list"

#aws_waf_size_constraint_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_waf_size_constraint_set")
	arn?:              string
	id?:               string
	name:              string
	size_constraints?: #size_constraints | [...#size_constraints]

	#size_constraints: {
		comparison_operator: string
		size:                number
		text_transformation: string
		field_to_match?:     #size_constraints.#field_to_match | list.MaxItems(1) & [_, ...] & [...#size_constraints.#field_to_match]

		#field_to_match: {
			data?: string
			type:  string
		}
	}
}
