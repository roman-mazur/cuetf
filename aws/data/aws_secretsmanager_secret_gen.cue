package data

#aws_secretsmanager_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_secretsmanager_secret")
	arn?:               string
	created_date?:      string
	description?:       string
	id?:                string
	kms_key_id?:        string
	last_changed_date?: string
	name?:              string
	policy?:            string
	tags?: [string]: string
}
