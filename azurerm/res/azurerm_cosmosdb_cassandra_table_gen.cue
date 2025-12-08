package res

import "list"

#azurerm_cosmosdb_cassandra_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cosmosdb_cassandra_table")
	close({
		autoscale_settings?: matchN(1, [#autoscale_settings, list.MaxItems(1) & [...#autoscale_settings]])
		analytical_storage_ttl?: number
		cassandra_keyspace_id!:  string
		default_ttl?:            number
		id?:                     string
		name!:                   string
		throughput?:             number
		schema!: matchN(1, [#schema, list.MaxItems(1) & [_, ...] & [...#schema]])
		timeouts?: #timeouts
	})

	#autoscale_settings: close({
		max_throughput?: number
	})

	#schema: close({
		cluster_key?: matchN(1, [_#defs."/$defs/schema/$defs/cluster_key", [..._#defs."/$defs/schema/$defs/cluster_key"]])
		column!: matchN(1, [_#defs."/$defs/schema/$defs/column", [_, ...] & [..._#defs."/$defs/schema/$defs/column"]])
		partition_key!: matchN(1, [_#defs."/$defs/schema/$defs/partition_key", [_, ...] & [..._#defs."/$defs/schema/$defs/partition_key"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/schema/$defs/cluster_key": close({
		name!:     string
		order_by!: string
	})

	_#defs: "/$defs/schema/$defs/column": close({
		name!: string
		type!: string
	})

	_#defs: "/$defs/schema/$defs/partition_key": close({
		name!: string
	})
}
