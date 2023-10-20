package data

#aws_serverlessapplicationrepository_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_serverlessapplicationrepository_application")
	application_id: string
	id?:            string
	name?:          string
	required_capabilities?: [...string]
	semantic_version?: string
	source_code_url?:  string
	template_url?:     string
}
