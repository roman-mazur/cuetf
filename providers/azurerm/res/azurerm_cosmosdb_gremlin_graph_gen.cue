package res

import "list"

#azurerm_cosmosdb_gremlin_graph: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cosmosdb_gremlin_graph")
	close({
		autoscale_settings?: matchN(1, [#autoscale_settings, list.MaxItems(1) & [...#autoscale_settings]])
		conflict_resolution_policy?: matchN(1, [#conflict_resolution_policy, list.MaxItems(1) & [...#conflict_resolution_policy]])
		index_policy?: matchN(1, [#index_policy, list.MaxItems(1) & [...#index_policy]])
		timeouts?: #timeouts
		unique_key?: matchN(1, [#unique_key, [...#unique_key]])
		account_name!:           string
		analytical_storage_ttl?: number
		database_name!:          string
		default_ttl?:            number
		id?:                     string
		name!:                   string
		partition_key_path!:     string
		partition_key_version?:  number
		resource_group_name!:    string
		throughput?:             number
	})

	#autoscale_settings: close({
		max_throughput?: number
	})

	#conflict_resolution_policy: close({
		conflict_resolution_path?:      string
		conflict_resolution_procedure?: string
		mode!:                          string
	})

	#index_policy: close({
		composite_index?: matchN(1, [_#defs."/$defs/index_policy/$defs/composite_index", [..._#defs."/$defs/index_policy/$defs/composite_index"]])
		spatial_index?: matchN(1, [_#defs."/$defs/index_policy/$defs/spatial_index", [..._#defs."/$defs/index_policy/$defs/spatial_index"]])
		automatic?: bool
		excluded_paths?: [...string]
		included_paths?: [...string]
		indexing_mode!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#unique_key: close({
		paths!: [...string]
	})

	_#defs: "/$defs/index_policy/$defs/composite_index": close({
		index!: matchN(1, [_#defs."/$defs/index_policy/$defs/composite_index/$defs/index", [_, ...] & [..._#defs."/$defs/index_policy/$defs/composite_index/$defs/index"]])
	})

	_#defs: "/$defs/index_policy/$defs/composite_index/$defs/index": close({
		order!: string
		path!:  string
	})

	_#defs: "/$defs/index_policy/$defs/spatial_index": close({
		path!: string
		types?: [...string]
	})
}
