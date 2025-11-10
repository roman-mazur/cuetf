package res

import "list"

#aws_waf_size_constraint_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_waf_size_constraint_set")
	close({
		size_constraints?: matchN(1, [#size_constraints, [...#size_constraints]])
		arn?:  string
		id?:   string
		name!: string
	})

	#size_constraints: close({
		field_to_match!: matchN(1, [_#defs."/$defs/size_constraints/$defs/field_to_match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/size_constraints/$defs/field_to_match"]])
		comparison_operator!: string
		size!:                number
		text_transformation!: string
	})

	_#defs: "/$defs/size_constraints/$defs/field_to_match": close({
		data?: string
		type!: string
	})
}
