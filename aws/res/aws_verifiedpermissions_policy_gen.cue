package res

#aws_verifiedpermissions_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_verifiedpermissions_policy")
	close({
		definition?: matchN(1, [#definition, [...#definition]])
		created_date?:    string
		id?:              string
		policy_id?:       string
		policy_store_id!: string
		region?:          string
	})

	#definition: close({
		static?: matchN(1, [_#defs."/$defs/definition/$defs/static", [..._#defs."/$defs/definition/$defs/static"]])
		template_linked?: matchN(1, [_#defs."/$defs/definition/$defs/template_linked", [..._#defs."/$defs/definition/$defs/template_linked"]])
	})

	_#defs: "/$defs/definition/$defs/static": close({
		description?: string
		statement!:   string
	})

	_#defs: "/$defs/definition/$defs/template_linked": close({
		principal?: matchN(1, [_#defs."/$defs/definition/$defs/template_linked/$defs/principal", [..._#defs."/$defs/definition/$defs/template_linked/$defs/principal"]])
		resource?: matchN(1, [_#defs."/$defs/definition/$defs/template_linked/$defs/resource", [..._#defs."/$defs/definition/$defs/template_linked/$defs/resource"]])
		policy_template_id!: string
	})

	_#defs: "/$defs/definition/$defs/template_linked/$defs/principal": close({
		entity_id!:   string
		entity_type!: string
	})

	_#defs: "/$defs/definition/$defs/template_linked/$defs/resource": close({
		entity_id!:   string
		entity_type!: string
	})
}
