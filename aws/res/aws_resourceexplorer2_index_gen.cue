package res

#aws_resourceexplorer2_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_resourceexplorer2_index")
	close({
		timeouts?: #timeouts
		arn?:      string
		id?:       string
		region?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
