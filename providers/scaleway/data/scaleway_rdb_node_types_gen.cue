package data

scaleway_rdb_node_types: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_rdb_node_types")
	close({
		id?: string

		// Whether to include disabled node types in the list.
		include_disabled_types?: bool

		// List of available RDB node types.
		node_types?: [...close({
			available_volume_types?: [...close({
				chunk_size_in_gb?: number
				class?:            string
				description?:      string
				max_size_in_gb?:   number
				min_size_in_gb?:   number
				type?:             string
			})]
			beta?:              bool
			description?:       string
			disabled?:          bool
			generation?:        string
			instance_range?:    string
			is_ha_required?:    bool
			memory_size_in_gb?: number
			name?:              string
			stock_status?:      string
			vcpus?:             number
		})]

		// The region you want to attach the resource to
		region?: string
	})
}
