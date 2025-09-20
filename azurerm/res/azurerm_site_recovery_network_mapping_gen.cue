package res

#azurerm_site_recovery_network_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_site_recovery_network_mapping")
	close({
		timeouts?:                    #timeouts
		id?:                          string
		name!:                        string
		recovery_vault_name!:         string
		resource_group_name!:         string
		source_network_id!:           string
		source_recovery_fabric_name!: string
		target_network_id!:           string
		target_recovery_fabric_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
