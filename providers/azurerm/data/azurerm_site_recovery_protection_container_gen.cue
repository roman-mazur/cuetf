package data

#azurerm_site_recovery_protection_container: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_site_recovery_protection_container")
	close({
		timeouts?:             #timeouts
		id?:                   string
		name!:                 string
		recovery_fabric_name!: string
		recovery_vault_name!:  string
		resource_group_name!:  string
	})

	#timeouts: close({
		read?: string
	})
}
