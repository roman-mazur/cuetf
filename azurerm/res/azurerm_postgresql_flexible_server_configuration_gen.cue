package res

#azurerm_postgresql_flexible_server_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_postgresql_flexible_server_configuration")
	close({
		timeouts?:  #timeouts
		id?:        string
		name!:      string
		server_id!: string
		value!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
