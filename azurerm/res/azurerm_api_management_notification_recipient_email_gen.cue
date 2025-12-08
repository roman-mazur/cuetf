package res

#azurerm_api_management_notification_recipient_email: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_api_management_notification_recipient_email")
	close({
		timeouts?:          #timeouts
		api_management_id!: string
		email!:             string
		id?:                string
		notification_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
