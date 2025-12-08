package res

import "list"

#azurerm_cosmosdb_gremlin_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cosmosdb_gremlin_database")
	close({
		autoscale_settings?: matchN(1, [#autoscale_settings, list.MaxItems(1) & [...#autoscale_settings]])
		account_name!:        string
		id?:                  string
		name!:                string
		resource_group_name!: string
		throughput?:          number
		timeouts?:            #timeouts
	})

	#autoscale_settings: close({
		max_throughput?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
