package data

scaleway_redis_node_types: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_redis_node_types")
	close({
		id?: string

		// Whether to include disabled node types in the list.
		include_disabled_types?: bool

		// List of available Redis™ node types.
		node_types?: [...close({
			beta?:              bool
			description?:       string
			disabled?:          bool
			memory_size_in_gb?: number
			name?:              string
			stock_status?:      string
			vcpus?:             number
		})]

		// The zone you want to attach the resource to
		zone?: string
	})
}
