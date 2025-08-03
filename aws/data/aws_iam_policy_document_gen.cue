package data

#aws_iam_policy_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_policy_document")
	close({
		id?: string
		statement?: matchN(1, [#statement, [...#statement]])
		json?:          string
		minified_json?: string
		override_policy_documents?: [...string]
		policy_id?: string
		source_policy_documents?: [...string]
		version?: string
	})

	#statement: close({
		actions?: [...string]
		effect?: string
		condition?: matchN(1, [_#defs."/$defs/statement/$defs/condition", [..._#defs."/$defs/statement/$defs/condition"]])
		not_principals?: matchN(1, [_#defs."/$defs/statement/$defs/not_principals", [..._#defs."/$defs/statement/$defs/not_principals"]])
		principals?: matchN(1, [_#defs."/$defs/statement/$defs/principals", [..._#defs."/$defs/statement/$defs/principals"]])
		not_actions?: [...string]
		not_resources?: [...string]
		resources?: [...string]
		sid?: string
	})

	_#defs: "/$defs/statement/$defs/condition": close({
		test!: string
		values!: [...string]
		variable!: string
	})

	_#defs: "/$defs/statement/$defs/not_principals": close({
		identifiers!: [...string]
		type!: string
	})

	_#defs: "/$defs/statement/$defs/principals": close({
		identifiers!: [...string]
		type!: string
	})
}
