package data

#aws_secretsmanager_secret_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_secretsmanager_secret_versions")
	arn?:                string
	include_deprecated?: bool
	name?:               string
	secret_id!:          string
	versions?: [...{
		created_time?:       string
		last_accessed_date?: string
		version_id?:         string
		version_stages?: [...string]
	}]
}
