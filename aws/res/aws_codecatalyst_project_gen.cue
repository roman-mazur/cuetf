package res

#aws_codecatalyst_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codecatalyst_project")
	close({
		description?:  string
		timeouts?:     #timeouts
		display_name!: string
		id?:           string
		name?:         string
		region?:       string
		space_name!:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
