package data

#aws_codeartifact_repository_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codeartifact_repository_endpoint")
	domain:               string
	domain_owner?:        string
	format:               string
	id?:                  string
	repository:           string
	repository_endpoint?: string
}
