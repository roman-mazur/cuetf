package res

#aws_backup_selection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_selection")
	close({
		condition?: matchN(1, [#condition, [...#condition]])
		iam_role_arn!: string
		id?:           string
		name!:         string
		not_resources?: [...string]
		plan_id!: string
		region?:  string
		resources?: [...string]
		selection_tag?: matchN(1, [#selection_tag, [...#selection_tag]])
	})

	#condition: close({
		string_equals?: matchN(1, [_#defs."/$defs/condition/$defs/string_equals", [..._#defs."/$defs/condition/$defs/string_equals"]])
		string_like?: matchN(1, [_#defs."/$defs/condition/$defs/string_like", [..._#defs."/$defs/condition/$defs/string_like"]])
		string_not_equals?: matchN(1, [_#defs."/$defs/condition/$defs/string_not_equals", [..._#defs."/$defs/condition/$defs/string_not_equals"]])
		string_not_like?: matchN(1, [_#defs."/$defs/condition/$defs/string_not_like", [..._#defs."/$defs/condition/$defs/string_not_like"]])
	})

	#selection_tag: close({
		key!:   string
		type!:  string
		value!: string
	})

	_#defs: "/$defs/condition/$defs/string_equals": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/condition/$defs/string_like": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/condition/$defs/string_not_equals": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/condition/$defs/string_not_like": close({
		key!:   string
		value!: string
	})
}
