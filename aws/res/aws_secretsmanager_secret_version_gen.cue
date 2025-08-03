package res

#aws_secretsmanager_secret_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_secretsmanager_secret_version")
	close({
		arn?:                      string
		has_secret_string_wo?:     bool
		id?:                       string
		region?:                   string
		secret_binary?:            string
		secret_id!:                string
		secret_string?:            string
		secret_string_wo?:         string
		secret_string_wo_version?: number
		version_id?:               string
		version_stages?: [...string]
	})
}
