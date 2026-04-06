package res

#azurerm_automation_connection_service_principal: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_automation_connection_service_principal")
	close({
		timeouts?:                #timeouts
		application_id!:          string
		automation_account_name!: string
		certificate_thumbprint!:  string
		description?:             string
		id?:                      string
		name!:                    string
		resource_group_name!:     string
		subscription_id!:         string
		tenant_id!:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
