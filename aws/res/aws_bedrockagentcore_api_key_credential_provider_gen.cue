package res

#aws_bedrockagentcore_api_key_credential_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrockagentcore_api_key_credential_provider")
	close({
		api_key?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		api_key_secret_arn?: [...close({
			secret_arn?: string
		})]
		api_key_wo?:              string
		api_key_wo_version?:      number
		credential_provider_arn?: string
		name!:                    string
	})
}
