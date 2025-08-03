package res

#aws_servicecatalog_budget_resource_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_budget_resource_association")
	close({
		budget_name!: string
		id?:          string
		region?:      string
		resource_id!: string
		timeouts?:    #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
