package res

#azurerm_cosmosdb_postgresql_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cosmosdb_postgresql_role")
	close({
		timeouts?:   #timeouts
		cluster_id!: string
		id?:         string
		name!:       string
		password!:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
