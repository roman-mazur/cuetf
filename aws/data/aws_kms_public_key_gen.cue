package data

#aws_kms_public_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kms_public_key")
	close({
		arn?:                      string
		customer_master_key_spec?: string
		encryption_algorithms?: [...string]
		grant_tokens?: [...string]
		id?:             string
		key_id!:         string
		key_usage?:      string
		public_key?:     string
		public_key_pem?: string
		region?:         string
		signing_algorithms?: [...string]
	})
}
