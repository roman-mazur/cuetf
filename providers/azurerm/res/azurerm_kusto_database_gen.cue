package res

#azurerm_kusto_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_kusto_database")
	close({
		timeouts?:            #timeouts
		cluster_name!:        string
		hot_cache_period?:    string
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		size?:                number
		soft_delete_period?:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
