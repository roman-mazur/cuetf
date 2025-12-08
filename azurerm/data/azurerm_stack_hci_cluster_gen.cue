package data

#azurerm_stack_hci_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_stack_hci_cluster")
	close({
		automanage_configuration_id?: string
		client_id?:                   string
		cloud_id?:                    string
		id?:                          string
		identity?: [...close({
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:                    string
		name!:                        string
		resource_group_name!:         string
		timeouts?:                    #timeouts
		resource_provider_object_id?: string
		service_endpoint?:            string
		tags?: [string]: string
		tenant_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
