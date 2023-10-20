package res

#aws_servicecatalog_budget_resource_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_servicecatalog_budget_resource_association")
	budget_name: string
	id?:         string
	resource_id: string
	timeouts?:   #timeouts

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
	}
}
