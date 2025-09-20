package res

#azurerm_key_vault_managed_hardware_security_module_role_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_key_vault_managed_hardware_security_module_role_assignment")
	close({
		timeouts?:           #timeouts
		id?:                 string
		managed_hsm_id!:     string
		name!:               string
		principal_id!:       string
		resource_id?:        string
		role_definition_id!: string
		scope!:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
