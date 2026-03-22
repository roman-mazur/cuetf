package res

#azurerm_bot_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_bot_connection")
	close({
		timeouts?:      #timeouts
		bot_name!:      string
		client_id!:     string
		client_secret!: string
		id?:            string
		location!:      string
		name!:          string
		parameters?: [string]: string
		resource_group_name!:   string
		scopes?:                string
		service_provider_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
