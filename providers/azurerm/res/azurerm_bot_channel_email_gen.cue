package res

#azurerm_bot_channel_email: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_bot_channel_email")
	close({
		timeouts?:            #timeouts
		bot_name!:            string
		email_address!:       string
		email_password?:      string
		id?:                  string
		location!:            string
		magic_code?:          string
		resource_group_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
