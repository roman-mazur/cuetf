package res

#azurerm_site_recovery_hyperv_network_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_site_recovery_hyperv_network_mapping")
	close({
		timeouts?:                                          #timeouts
		id?:                                                string
		name!:                                              string
		recovery_vault_id!:                                 string
		source_network_name!:                               string
		source_system_center_virtual_machine_manager_name!: string
		target_network_id!:                                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
