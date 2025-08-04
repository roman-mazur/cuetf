package res

import "list"

#aws_wafregional_sql_injection_match_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafregional_sql_injection_match_set")
	close({
		sql_injection_match_tuple?: matchN(1, [#sql_injection_match_tuple, [...#sql_injection_match_tuple]])
		id?:     string
		name!:   string
		region?: string
	})

	#sql_injection_match_tuple: close({
		field_to_match?: matchN(1, [_#defs."/$defs/sql_injection_match_tuple/$defs/field_to_match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/sql_injection_match_tuple/$defs/field_to_match"]])
		text_transformation!: string
	})

	_#defs: "/$defs/sql_injection_match_tuple/$defs/field_to_match": close({
		data?: string
		type!: string
	})
}
