package res

#azurerm_api_management_notification_recipient_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_notification_recipient_user")
	close({
		timeouts?:          #timeouts
		api_management_id!: string
		id?:                string
		notification_type!: string
		user_id!:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
