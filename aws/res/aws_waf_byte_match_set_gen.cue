package res

import "list"

#aws_waf_byte_match_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_waf_byte_match_set")
	close({
		byte_match_tuples?: matchN(1, [#byte_match_tuples, [...#byte_match_tuples]])
		arn?:  string
		id?:   string
		name!: string
	})

	#byte_match_tuples: close({
		field_to_match!: matchN(1, [_#defs."/$defs/byte_match_tuples/$defs/field_to_match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/byte_match_tuples/$defs/field_to_match"]])
		positional_constraint!: string
		target_string?:         string
		text_transformation!:   string
	})

	_#defs: "/$defs/byte_match_tuples/$defs/field_to_match": close({
		data?: string
		type!: string
	})
}
