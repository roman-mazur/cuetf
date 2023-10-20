package data

#aws_secretsmanager_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_secretsmanager_secret")
	arn?:         string
	description?: string
	id?:          string
	kms_key_id?:  string
	name?:        string
	policy?:      string
	tags?: [string]: string
}
