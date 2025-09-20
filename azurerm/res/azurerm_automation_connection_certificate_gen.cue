package res

#azurerm_automation_connection_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_automation_connection_certificate")
	close({
		timeouts?:                    #timeouts
		automation_account_name!:     string
		automation_certificate_name!: string
		description?:                 string
		id?:                          string
		name!:                        string
		resource_group_name!:         string
		subscription_id!:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
