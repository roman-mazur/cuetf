package data

#aws_secretsmanager_secret_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_secretsmanager_secret_version")
	arn?:           string
	created_date?:  string
	id?:            string
	secret_binary?: string
	secret_id!:     string
	secret_string?: string
	version_id?:    string
	version_stage?: string
	version_stages?: [...string]
}
