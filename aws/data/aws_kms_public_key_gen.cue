package data

#aws_kms_public_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kms_public_key")
	arn?:                      string
	customer_master_key_spec?: string
	encryption_algorithms?: [...string]
	grant_tokens?: [...string]
	id?:             string
	key_id!:         string
	key_usage?:      string
	public_key?:     string
	public_key_pem?: string
	signing_algorithms?: [...string]
}
