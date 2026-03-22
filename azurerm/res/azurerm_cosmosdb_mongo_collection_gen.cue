package res

import "list"

#azurerm_cosmosdb_mongo_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cosmosdb_mongo_collection")
	close({
		autoscale_settings?: matchN(1, [#autoscale_settings, list.MaxItems(1) & [...#autoscale_settings]])
		index?: matchN(1, [#index, [...#index]])
		timeouts?:               #timeouts
		account_name!:           string
		analytical_storage_ttl?: number
		database_name!:          string
		default_ttl_seconds?:    number
		id?:                     string
		name!:                   string
		resource_group_name!:    string
		shard_key?:              string
		system_indexes?: [...close({
			keys?: [...string]
			unique?: bool
		})]
		throughput?: number
	})

	#autoscale_settings: close({
		max_throughput?: number
	})

	#index: close({
		keys!: [...string]
		unique?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
