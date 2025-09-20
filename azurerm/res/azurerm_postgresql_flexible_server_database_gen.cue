package res

#azurerm_postgresql_flexible_server_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_postgresql_flexible_server_database")
	close({
		timeouts?:  #timeouts
		charset?:   string
		collation?: string
		id?:        string
		name!:      string
		server_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
