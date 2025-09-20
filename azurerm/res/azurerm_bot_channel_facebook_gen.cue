package res

#azurerm_bot_channel_facebook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_bot_channel_facebook")
	close({
		page?: matchN(1, [#page, [_, ...] & [...#page]])
		bot_name!:                    string
		facebook_application_id!:     string
		facebook_application_secret!: string
		id?:                          string
		location!:                    string
		resource_group_name!:         string
		timeouts?:                    #timeouts
	})

	#page: close({
		access_token!: string
		id!:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
