package res

#azurerm_private_endpoint_application_security_group_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_private_endpoint_application_security_group_association")
	close({
		timeouts?:                      #timeouts
		application_security_group_id!: string
		id?:                            string
		private_endpoint_id!:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
