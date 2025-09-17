package data

#aws_glue_data_catalog_encryption_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_data_catalog_encryption_settings")
	close({
		catalog_id!: string
		data_catalog_encryption_settings?: [...close({
			connection_password_encryption?: [...close({
				aws_kms_key_id?:                       string
				return_connection_password_encrypted?: bool
			})]
			encryption_at_rest?: [...close({
				catalog_encryption_mode?:         string
				catalog_encryption_service_role?: string
				sse_aws_kms_key_id?:              string
			})]
		})]
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
