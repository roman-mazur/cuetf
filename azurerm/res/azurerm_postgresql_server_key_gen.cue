package res

#azurerm_postgresql_server_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_postgresql_server_key")
	close({
		timeouts?:         #timeouts
		id?:               string
		key_vault_key_id!: string
		server_id!:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
