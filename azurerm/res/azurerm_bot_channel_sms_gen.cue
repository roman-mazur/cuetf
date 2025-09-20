package res

#azurerm_bot_channel_sms: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_bot_channel_sms")
	close({
		timeouts?:                        #timeouts
		bot_name!:                        string
		id?:                              string
		location!:                        string
		phone_number!:                    string
		resource_group_name!:             string
		sms_channel_account_security_id!: string
		sms_channel_auth_token!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
