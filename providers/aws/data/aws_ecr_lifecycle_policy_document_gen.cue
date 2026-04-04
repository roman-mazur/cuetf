package data

#aws_ecr_lifecycle_policy_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ecr_lifecycle_policy_document")
	close({
		rule?: matchN(1, [#rule, [...#rule]])
		json?: string
	})

	#rule: close({
		action?: matchN(1, [_#defs."/$defs/rule/$defs/action", [..._#defs."/$defs/rule/$defs/action"]])
		selection?: matchN(1, [_#defs."/$defs/rule/$defs/selection", [..._#defs."/$defs/rule/$defs/selection"]])
		description?: string
		priority!:    number
	})

	_#defs: "/$defs/rule/$defs/action": close({
		target_storage_class?: string
		type!:                 string
	})

	_#defs: "/$defs/rule/$defs/selection": close({
		count_number!:  number
		count_type!:    string
		count_unit?:    string
		storage_class?: string
		tag_pattern_list?: [...string]
		tag_prefix_list?: [...string]
		tag_status!: string
	})
}
