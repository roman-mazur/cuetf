package res

import "list"

#azurerm_cosmosdb_sql_container: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cosmosdb_sql_container")
	close({
		account_name!: string
		autoscale_settings?: matchN(1, [#autoscale_settings, list.MaxItems(1) & [...#autoscale_settings]])
		analytical_storage_ttl?: number
		database_name!:          string
		default_ttl?:            number
		id?:                     string
		name!:                   string
		partition_key_kind?:     string
		partition_key_paths!: [...string]
		conflict_resolution_policy?: matchN(1, [#conflict_resolution_policy, list.MaxItems(1) & [...#conflict_resolution_policy]])
		indexing_policy?: matchN(1, [#indexing_policy, list.MaxItems(1) & [...#indexing_policy]])
		partition_key_version?: number
		timeouts?:              #timeouts
		unique_key?: matchN(1, [#unique_key, [...#unique_key]])
		resource_group_name!: string
		throughput?:          number
	})

	#autoscale_settings: close({
		max_throughput?: number
	})

	#conflict_resolution_policy: close({
		conflict_resolution_path?:      string
		conflict_resolution_procedure?: string
		mode!:                          string
	})

	#indexing_policy: close({
		composite_index?: matchN(1, [_#defs."/$defs/indexing_policy/$defs/composite_index", [..._#defs."/$defs/indexing_policy/$defs/composite_index"]])
		excluded_path?: matchN(1, [_#defs."/$defs/indexing_policy/$defs/excluded_path", [..._#defs."/$defs/indexing_policy/$defs/excluded_path"]])
		included_path?: matchN(1, [_#defs."/$defs/indexing_policy/$defs/included_path", [..._#defs."/$defs/indexing_policy/$defs/included_path"]])
		spatial_index?: matchN(1, [_#defs."/$defs/indexing_policy/$defs/spatial_index", [..._#defs."/$defs/indexing_policy/$defs/spatial_index"]])
		indexing_mode?: string
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

	_#defs: "/$defs/indexing_policy/$defs/composite_index": close({
		index!: matchN(1, [_#defs."/$defs/indexing_policy/$defs/composite_index/$defs/index", [_, ...] & [..._#defs."/$defs/indexing_policy/$defs/composite_index/$defs/index"]])
	})

	_#defs: "/$defs/indexing_policy/$defs/composite_index/$defs/index": close({
		order!: string
		path!:  string
	})

	_#defs: "/$defs/indexing_policy/$defs/excluded_path": close({
		path!: string
	})

	_#defs: "/$defs/indexing_policy/$defs/included_path": close({
		path!: string
	})

	_#defs: "/$defs/indexing_policy/$defs/spatial_index": close({
		path!: string
		types?: [...string]
	})
}
