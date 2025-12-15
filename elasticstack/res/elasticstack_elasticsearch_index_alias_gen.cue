package res

#elasticstack_elasticsearch_index_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_index_alias")
	close({
		// Set of read indices for the alias.
		read_indices?: matchN(1, [close({
			// Query used to limit documents the alias can access.
			filter?: string

			// Value used to route indexing operations to a specific shard.
			index_routing?: string

			// If true, the alias is hidden.
			is_hidden?: bool

			// Name of the read index.
			name!: string

			// Value used to route indexing and search operations to a
			// specific shard.
			routing?: string

			// Value used to route search operations to a specific shard.
			search_routing?: string
		}), [...close({
			// Query used to limit documents the alias can access.
			filter?: string

			// Value used to route indexing operations to a specific shard.
			index_routing?: string

			// If true, the alias is hidden.
			is_hidden?: bool

			// Name of the read index.
			name!: string

			// Value used to route indexing and search operations to a
			// specific shard.
			routing?: string

			// Value used to route search operations to a specific shard.
			search_routing?: string
		})]])

		// Generated ID of the alias resource.
		id?: string

		// The write index for the alias. Only one write index is allowed
		// per alias.
		write_index?: close({
			// Query used to limit documents the alias can access.
			filter?: string

			// Value used to route indexing operations to a specific shard.
			index_routing?: string

			// If true, the alias is hidden.
			is_hidden?: bool

			// Name of the write index.
			name!: string

			// Value used to route indexing and search operations to a
			// specific shard.
			routing?: string

			// Value used to route search operations to a specific shard.
			search_routing?: string
		})

		// The alias name.
		name!: string
	})
}
