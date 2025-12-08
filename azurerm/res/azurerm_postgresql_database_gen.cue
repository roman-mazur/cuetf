package res

#azurerm_postgresql_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_postgresql_database")
	close({
		timeouts?:            #timeouts
		charset!:             string
		collation!:           string
		id?:                  string
		name!:                string
		resource_group_name!: string
		server_name!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
