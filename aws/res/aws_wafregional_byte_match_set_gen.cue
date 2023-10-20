package res

import "list"

#aws_wafregional_byte_match_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_wafregional_byte_match_set")
	id?:                string
	name:               string
	byte_match_tuples?: #byte_match_tuples | [...#byte_match_tuples]

	#byte_match_tuples: {
		positional_constraint: string
		target_string?:        string
		text_transformation:   string
		field_to_match?:       #byte_match_tuples.#field_to_match | list.MaxItems(1) & [_, ...] & [...#byte_match_tuples.#field_to_match]

		#field_to_match: {
			data?: string
			type:  string
		}
	}
}
