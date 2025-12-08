package res

#azurerm_bot_channel_web_chat: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_bot_channel_web_chat")
	close({
		site?: matchN(1, [#site, [...#site]])
		bot_name!:            string
		id?:                  string
		location!:            string
		resource_group_name!: string
		timeouts?:            #timeouts
	})

	#site: close({
		endpoint_parameters_enabled?: bool
		name!:                        string
		storage_enabled?:             bool
		user_upload_enabled?:         bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
