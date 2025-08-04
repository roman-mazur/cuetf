package res

#aws_verifiedpermissions_policy_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_verifiedpermissions_policy_store")
	close({
		arn?:                 string
		deletion_protection?: string
		description?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		id?:              string
		policy_store_id?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		validation_settings?: matchN(1, [#validation_settings, [...#validation_settings]])
	})

	#validation_settings: close({
		mode!: string
	})
}
