package res

#aws_servicecatalog_portfolio: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_portfolio")
	close({
		arn?:           string
		timeouts?:      #timeouts
		created_time?:  string
		description?:   string
		id?:            string
		name!:          string
		provider_name!: string
		region?:        string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
