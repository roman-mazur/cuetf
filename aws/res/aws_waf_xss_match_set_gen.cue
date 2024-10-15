package res

import "list"

#aws_waf_xss_match_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_waf_xss_match_set")
	arn?:  string
	id?:   string
	name!: string
	xss_match_tuples?: #xss_match_tuples | [...#xss_match_tuples]

	#xss_match_tuples: {
		text_transformation!: string
		field_to_match?: #xss_match_tuples.#field_to_match | list.MaxItems(1) & [_, ...] & [...#xss_match_tuples.#field_to_match]

		#field_to_match: {
			data?: string
			type!: string
		}
	}
}
