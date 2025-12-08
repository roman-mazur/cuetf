package res

#azurerm_key_vault_managed_hardware_security_module_key_rotation_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_key_vault_managed_hardware_security_module_key_rotation_policy")
	close({
		timeouts?:            #timeouts
		expire_after!:        string
		id?:                  string
		managed_hsm_key_id!:  string
		time_after_creation?: string
		time_before_expiry?:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
