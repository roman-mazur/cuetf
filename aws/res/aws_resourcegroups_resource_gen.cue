package res

#aws_resourcegroups_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_resourcegroups_resource")
	close({
		timeouts?:      #timeouts
		group_arn!:     string
		id?:            string
		region?:        string
		resource_arn!:  string
		resource_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
