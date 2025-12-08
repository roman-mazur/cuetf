package data

#azurerm_resource_group_template_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_resource_group_template_deployment")
	close({
		timeouts?:            #timeouts
		id?:                  string
		name!:                string
		output_content?:      string
		resource_group_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
