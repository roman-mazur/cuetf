package res

#azurerm_bot_channel_slack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_bot_channel_slack")
	close({
		timeouts?:            #timeouts
		bot_name!:            string
		client_id!:           string
		client_secret!:       string
		id?:                  string
		landing_page_url?:    string
		location!:            string
		resource_group_name!: string
		signing_secret?:      string
		verification_token!:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
