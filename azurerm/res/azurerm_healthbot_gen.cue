package res

#azurerm_healthbot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_healthbot")
	close({
		timeouts?:                  #timeouts
		bot_management_portal_url?: string
		id?:                        string
		location!:                  string
		name!:                      string
		resource_group_name!:       string
		sku_name!:                  string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
