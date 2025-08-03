package data

#aws_secretsmanager_secret_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_secretsmanager_secret_version")
	close({
		arn?:           string
		created_date?:  string
		id?:            string
		region?:        string
		secret_binary?: string
		secret_id!:     string
		secret_string?: string
		version_id?:    string
		version_stage?: string
		version_stages?: [...string]
	})
}
