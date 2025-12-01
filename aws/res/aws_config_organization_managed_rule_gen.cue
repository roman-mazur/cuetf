package res

#aws_config_organization_managed_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_config_organization_managed_rule")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		arn?:         string
		description?: string
		excluded_accounts?: [...string]
		id?:                          string
		input_parameters?:            string
		maximum_execution_frequency?: string
		timeouts?:                    #timeouts
		name!:                        string
		resource_id_scope?:           string
		resource_types_scope?: [...string]
		rule_identifier!: string
		tag_key_scope?:   string
		tag_value_scope?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
