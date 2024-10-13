package res

import "list"

#aws_waf_sql_injection_match_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_waf_sql_injection_match_set")
	id?:   string
	name!: string
	sql_injection_match_tuples?: #sql_injection_match_tuples | [...#sql_injection_match_tuples]

	#sql_injection_match_tuples: {
		text_transformation!: string
		field_to_match?: #sql_injection_match_tuples.#field_to_match | list.MaxItems(1) & [_, ...] & [...#sql_injection_match_tuples.#field_to_match]

		#field_to_match: {
			data?: string
			type!: string
		}
	}
}
