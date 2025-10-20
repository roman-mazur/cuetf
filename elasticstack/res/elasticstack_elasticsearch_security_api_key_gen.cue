package res

#elasticstack_elasticsearch_security_api_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_security_api_key")
	close({
		// Access configuration for cross-cluster API keys. Only
		// applicable when type is 'cross_cluster'.
		access?: close({
			// A list of replication configurations for which the
			// cross-cluster API key will have replication privileges.
			replication?: matchN(1, [close({
				// A list of index patterns for replication.
				names!: [...string]
			}), [...close({
				// A list of index patterns for replication.
				names!: [...string]
			})]])

			// A list of search configurations for which the cross-cluster API
			// key will have search privileges.
			search?: matchN(1, [close({
				// Whether to allow access to restricted indices.
				allow_restricted_indices?: bool

				// Field-level security configuration in JSON format.
				field_security?: string

				// A list of index patterns for search.
				names!: [...string]

				// Query to filter documents for search operations in JSON format.
				query?: string
			}), [...close({
				// Whether to allow access to restricted indices.
				allow_restricted_indices?: bool

				// Field-level security configuration in JSON format.
				field_security?: string

				// A list of index patterns for search.
				names!: [...string]

				// Query to filter documents for search operations in JSON format.
				query?: string
			})]])
		})

		// Generated API Key.
		api_key?: string

		// API key credentials which is the Base64-encoding of the UTF-8
		// representation of the id and api_key joined by a colon (:).
		encoded?: string

		// Expiration time for the API key. By default, API keys never
		// expire.
		expiration?: string

		// Expiration time in milliseconds for the API key. By default,
		// API keys never expire.
		expiration_timestamp?: number

		// Internal identifier of the resource.
		id?: string

		// Unique id for this API key.
		key_id?: string

		// Arbitrary metadata that you want to associate with the API key.
		metadata?: string
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// Specifies the name for this API key.
		name!: string

		// Role descriptors for this API key.
		role_descriptors?: string

		// The type of API key. Valid values are 'rest' (default) and
		// 'cross_cluster'. Cross-cluster API keys are used for
		// cross-cluster search and replication.
		type?: string
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
