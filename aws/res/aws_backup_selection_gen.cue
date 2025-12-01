package res

#aws_backup_selection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_backup_selection")
	close({
		iam_role_arn!: string
		condition?: matchN(1, [#condition, [...#condition]])
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		not_resources?: [...string]
		plan_id!: string
		selection_tag?: matchN(1, [#selection_tag, [...#selection_tag]])
		resources?: [...string]
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
