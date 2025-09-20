package res

#azurerm_app_service_active_slot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_app_service_active_slot")
	close({
		timeouts?:              #timeouts
		app_service_name!:      string
		app_service_slot_name!: string
		id?:                    string
		resource_group_name!:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
