package res

#aws_serverlessapplicationrepository_cloudformation_stack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_serverlessapplicationrepository_cloudformation_stack")
	close({
		application_id!: string
		timeouts?:       #timeouts
		capabilities!: [...string]
		id?:   string
		name!: string
		outputs?: [string]:    string
		parameters?: [string]: string
		region?:           string
		semantic_version?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
