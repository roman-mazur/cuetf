package res

#aws_codecatalyst_source_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codecatalyst_source_repository")
	close({
		timeouts?:     #timeouts
		description?:  string
		id?:           string
		name!:         string
		project_name!: string
		region?:       string
		space_name!:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
