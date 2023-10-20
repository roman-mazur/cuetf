package res

#aws_codecatalyst_source_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codecatalyst_source_repository")
	description?: string
	id?:          string
	name:         string
	project_name: string
	space_name:   string
	timeouts?:    #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
