package res

#azurerm_key_vault_managed_hardware_security_module_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_key_vault_managed_hardware_security_module_key")
	close({
		curve?:           string
		expiration_date?: string
		id?:              string
		key_opts!: [...string]
		key_size?:        number
		key_type!:        string
		managed_hsm_id!:  string
		name!:            string
		not_before_date?: string
		timeouts?:        #timeouts
		tags?: [string]: string
		versioned_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
