package res

#azurerm_logic_app_integration_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_logic_app_integration_account")
	close({
		timeouts?:                           #timeouts
		id?:                                 string
		integration_service_environment_id?: string
		location!:                           string
		name!:                               string
		resource_group_name!:                string
		sku_name!:                           string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
