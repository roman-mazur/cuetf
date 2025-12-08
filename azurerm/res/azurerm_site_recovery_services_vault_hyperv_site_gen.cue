package res

#azurerm_site_recovery_services_vault_hyperv_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_site_recovery_services_vault_hyperv_site")
	close({
		timeouts?:          #timeouts
		id?:                string
		name!:              string
		recovery_vault_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
