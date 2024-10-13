package res

import "list"

#aws_wafregional_xss_match_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_wafregional_xss_match_set")
	id?:   string
	name!: string
	xss_match_tuple?: #xss_match_tuple | [...#xss_match_tuple]

	#xss_match_tuple: {
		text_transformation!: string
		field_to_match?: #xss_match_tuple.#field_to_match | list.MaxItems(1) & [_, ...] & [...#xss_match_tuple.#field_to_match]

		#field_to_match: {
			data?: string
			type!: string
		}
	}
}
