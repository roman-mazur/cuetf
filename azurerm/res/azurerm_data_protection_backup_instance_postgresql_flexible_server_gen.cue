package res

#azurerm_data_protection_backup_instance_postgresql_flexible_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_protection_backup_instance_postgresql_flexible_server")
	close({
		timeouts?:         #timeouts
		backup_policy_id!: string
		id?:               string
		location!:         string
		name!:             string
		protection_state?: string
		server_id!:        string
		vault_id!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
