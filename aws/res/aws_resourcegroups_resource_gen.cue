package res

#aws_resourcegroups_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_resourcegroups_resource")
	group_arn:      string
	id?:            string
	resource_arn:   string
	resource_type?: string
	timeouts?:      #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
