package data

#aws_serverlessapplicationrepository_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_serverlessapplicationrepository_application")
	close({
		application_id!: string
		id?:             string
		name?:           string
		region?:         string
		required_capabilities?: [...string]
		semantic_version?: string
		source_code_url?:  string
		template_url?:     string
	})
}
