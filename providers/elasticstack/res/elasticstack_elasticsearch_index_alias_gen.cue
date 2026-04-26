package res

#elasticstack_elasticsearch_index_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_index_alias")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// Generated ID of the alias resource.
		id?: string

		// The alias name.
		name!: string

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
	})

	#elasticsearch_connection: close({
		// API Key to use for authentication to Elasticsearch
		api_key?: string

		// Bearer Token to use for authentication to Elasticsearch
		bearer_token?: string

		// PEM-encoded custom Certificate Authority certificate
		ca_data?: string

		// Path to a custom Certificate Authority certificate
		ca_file?: string

		// PEM encoded certificate for client auth
		cert_data?: string

		// Path to a file containing the PEM encoded certificate for
		// client auth
		cert_file?: string

		// A list of endpoints where the terraform provider will point to,
		// this must include the http(s) schema and port number.
		endpoints?: [...string]

		// ES Client Authentication field to be used with the JWT token
		es_client_authentication?: string

		// A list of headers to be sent with each request to
		// Elasticsearch.
		headers?: [string]: string

		// Disable TLS certificate validation
		insecure?: bool

		// PEM encoded private key for client auth
		key_data?: string

		// Path to a file containing the PEM encoded private key for
		// client auth
		key_file?: string

		// Password to use for API authentication to Elasticsearch.
		password?: string

		// Username to use for API authentication to Elasticsearch.
		username?: string
	})
}
