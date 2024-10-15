package res

import "list"

#aws_wafregional_regex_match_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafregional_regex_match_set")
	id?:   string
	name!: string
	regex_match_tuple?: #regex_match_tuple | [...#regex_match_tuple]

	#regex_match_tuple: {
		regex_pattern_set_id!: string
		text_transformation!:  string
		field_to_match?: #regex_match_tuple.#field_to_match | list.MaxItems(1) & [_, ...] & [...#regex_match_tuple.#field_to_match]

		#field_to_match: {
			data?: string
			type!: string
		}
	}
}
