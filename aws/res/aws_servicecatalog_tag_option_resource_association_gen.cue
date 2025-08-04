package res

#aws_servicecatalog_tag_option_resource_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_tag_option_resource_association")
	close({
		timeouts?:              #timeouts
		id?:                    string
		region?:                string
		resource_arn?:          string
		resource_created_time?: string
		resource_description?:  string
		resource_id!:           string
		resource_name?:         string
		tag_option_id!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
