package res

#azurerm_recovery_services_vault_resource_guard_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_recovery_services_vault_resource_guard_association")
	close({
		timeouts?:          #timeouts
		id?:                string
		resource_guard_id!: string
		vault_id!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
