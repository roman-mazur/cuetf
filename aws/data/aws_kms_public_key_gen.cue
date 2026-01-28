package data

#aws_kms_public_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_kms_public_key")
	close({
		arn?:                      string
		customer_master_key_spec?: string
		encryption_algorithms?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		grant_tokens?: [...string]
		id?:             string
		key_id!:         string
		key_usage?:      string
		public_key?:     string
		public_key_pem?: string
		signing_algorithms?: [...string]
	})
}
