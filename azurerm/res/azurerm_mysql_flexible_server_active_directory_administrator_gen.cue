package res

#azurerm_mysql_flexible_server_active_directory_administrator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mysql_flexible_server_active_directory_administrator")
	close({
		timeouts?:    #timeouts
		id?:          string
		identity_id!: string
		login!:       string
		object_id!:   string
		server_id!:   string
		tenant_id!:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
