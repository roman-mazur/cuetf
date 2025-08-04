package res

#aws_verifiedpermissions_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_verifiedpermissions_policy")
	close({
		created_date?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		id?:              string
		policy_id?:       string
		policy_store_id!: string
		definition?: matchN(1, [#definition, [...#definition]])
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
