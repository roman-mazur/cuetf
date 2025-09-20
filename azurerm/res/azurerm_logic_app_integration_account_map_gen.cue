package res

#azurerm_logic_app_integration_account_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_logic_app_integration_account_map")
	close({
		timeouts?:                 #timeouts
		content!:                  string
		id?:                       string
		integration_account_name!: string
		map_type!:                 string
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
