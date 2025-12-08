package res

#azurerm_logic_app_integration_account_assembly: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_logic_app_integration_account_assembly")
	close({
		timeouts?:                 #timeouts
		assembly_name!:            string
		assembly_version?:         string
		content?:                  string
		content_link_uri?:         string
		id?:                       string
		integration_account_name!: string
		metadata?: [string]: string
		name!:                string
		resource_group_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
