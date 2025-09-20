package res

#azurerm_api_management_email_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_email_template")
	close({
		timeouts?:            #timeouts
		api_management_name!: string
		body!:                string
		description?:         string
		id?:                  string
		resource_group_name!: string
		subject!:             string
		template_name!:       string
		title?:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
