package res

aws_cloudwatchomni_space: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudwatchomni_space")
	close({
		encryption_configuration?: matchN(1, [#encryption_configuration, [...#encryption_configuration]])
		agent_core_evaluation_role_arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		data_access_role_arn!: string
		domain_arn?:           string
		domain_id!:            string
		name!:                 string
		space_arn?:            string
		space_id?:             string
		status?:               string
	})

	#encryption_configuration: close({
		encryption_strategy!: string
		kms_key_arn?:         string
	})
}
