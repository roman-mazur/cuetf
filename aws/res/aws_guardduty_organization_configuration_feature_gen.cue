package res

#aws_guardduty_organization_configuration_feature: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_guardduty_organization_configuration_feature")
	close({
		auto_enable!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		detector_id!: string
		id?:          string
		name!:        string
		additional_configuration?: matchN(1, [#additional_configuration, [...#additional_configuration]])
	})

	#additional_configuration: close({
		auto_enable!: string
		name!:        string
	})
}
