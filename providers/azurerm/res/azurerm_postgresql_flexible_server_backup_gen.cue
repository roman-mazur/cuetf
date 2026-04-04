package res

#azurerm_postgresql_flexible_server_backup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_postgresql_flexible_server_backup")
	close({
		timeouts?:       #timeouts
		completed_time?: string
		id?:             string
		name!:           string
		server_id!:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
