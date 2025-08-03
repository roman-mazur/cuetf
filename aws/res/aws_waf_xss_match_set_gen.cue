package res

import "list"

#aws_waf_xss_match_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_waf_xss_match_set")
	close({
		arn?:  string
		id?:   string
		name!: string
		xss_match_tuples?: matchN(1, [#xss_match_tuples, [...#xss_match_tuples]])
	})

	#xss_match_tuples: close({
		text_transformation!: string
		field_to_match?: matchN(1, [_#defs."/$defs/xss_match_tuples/$defs/field_to_match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/xss_match_tuples/$defs/field_to_match"]])
	})

	_#defs: "/$defs/xss_match_tuples/$defs/field_to_match": close({
		data?: string
		type!: string
	})
}
