package res

import "list"

#aws_waf_regex_match_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_waf_regex_match_set")
	arn?:               string
	id?:                string
	name:               string
	regex_match_tuple?: #regex_match_tuple | [...#regex_match_tuple]

	#regex_match_tuple: {
		regex_pattern_set_id: string
		text_transformation:  string
		field_to_match?:      #regex_match_tuple.#field_to_match | list.MaxItems(1) & [_, ...] & [...#regex_match_tuple.#field_to_match]

		#field_to_match: {
			data?: string
			type:  string
		}
	}
}
