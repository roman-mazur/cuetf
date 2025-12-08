package res

#azurerm_email_communication_service_domain_sender_username: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_email_communication_service_domain_sender_username")
	close({
		timeouts?:                #timeouts
		display_name?:            string
		email_service_domain_id!: string
		id?:                      string
		name!:                    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
