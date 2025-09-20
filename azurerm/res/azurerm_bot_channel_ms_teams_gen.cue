package res

#azurerm_bot_channel_ms_teams: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_bot_channel_ms_teams")
	close({
		timeouts?:               #timeouts
		bot_name!:               string
		calling_web_hook?:       string
		deployment_environment?: string
		enable_calling?:         bool
		id?:                     string
		location!:               string
		resource_group_name!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
