package res

#azurerm_key_vault_managed_hardware_security_module_role_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_key_vault_managed_hardware_security_module_role_definition")
	close({
		permission?: matchN(1, [#permission, [...#permission]])
		description?:         string
		id?:                  string
		managed_hsm_id!:      string
		name!:                string
		resource_manager_id?: string
		role_name?:           string
		role_type?:           string
		timeouts?:            #timeouts
	})

	#permission: close({
		actions?: [...string]
		data_actions?: [...string]
		not_actions?: [...string]
		not_data_actions?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
