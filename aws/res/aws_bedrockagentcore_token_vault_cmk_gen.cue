package res

#aws_bedrockagentcore_token_vault_cmk: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockagentcore_token_vault_cmk")
	close({
		kms_configuration?: matchN(1, [#kms_configuration, [...#kms_configuration]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		token_vault_id?: string
	})

	#kms_configuration: close({
		key_type!:    string
		kms_key_arn?: string
	})
}
