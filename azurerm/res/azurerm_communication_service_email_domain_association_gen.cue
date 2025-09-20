package res

#azurerm_communication_service_email_domain_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_communication_service_email_domain_association")
	close({
		timeouts?:                 #timeouts
		communication_service_id!: string
		email_service_domain_id!:  string
		id?:                       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
