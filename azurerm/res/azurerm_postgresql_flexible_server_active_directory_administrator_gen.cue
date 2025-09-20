package res

#azurerm_postgresql_flexible_server_active_directory_administrator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_postgresql_flexible_server_active_directory_administrator")
	close({
		timeouts?:            #timeouts
		id?:                  string
		object_id!:           string
		principal_name!:      string
		principal_type!:      string
		resource_group_name!: string
		server_name!:         string
		tenant_id!:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
