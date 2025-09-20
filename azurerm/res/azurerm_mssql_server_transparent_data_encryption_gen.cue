package res

#azurerm_mssql_server_transparent_data_encryption: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mssql_server_transparent_data_encryption")
	close({
		timeouts?:              #timeouts
		auto_rotation_enabled?: bool
		id?:                    string
		key_vault_key_id?:      string
		managed_hsm_key_id?:    string
		server_id!:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
