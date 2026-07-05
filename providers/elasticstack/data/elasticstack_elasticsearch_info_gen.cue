package data

elasticstack_elasticsearch_info: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_info")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// Name of the cluster, based on the `cluster.name` setting.
		cluster_name?: string

		// Contains version information for the Elasticsearch cluster.
		version?: matchN(1, [close({
			// Build date.
			build_date?: string

			// Build Flavor.
			build_flavor?: string

			// Short hash of the last git commit in this release.
			build_hash?: string

			// Build Snapshot.
			build_snapshot?: bool

			// Build Type.
			build_type?: string

			// Lucene Version.
			lucene_version?: string

			// Minimum index compatibility version.
			minimum_index_compatibility_version?: string

			// Minimum wire compatibility version.
			minimum_wire_compatibility_version?: string

			// Elasticsearch version number.
			number?: string
		}), [...close({
			// Build date.
			build_date?: string

			// Build Flavor.
			build_flavor?: string

			// Short hash of the last git commit in this release.
			build_hash?: string

			// Build Snapshot.
			build_snapshot?: bool

			// Build Type.
			build_type?: string

			// Lucene Version.
			lucene_version?: string

			// Minimum index compatibility version.
			minimum_index_compatibility_version?: string

			// Minimum wire compatibility version.
			minimum_wire_compatibility_version?: string

			// Elasticsearch version number.
			number?: string
		})]])

		// Unique identifier for the cluster.
		cluster_uuid?: string

		// Internal identifier of the resource.
		id?: string

		// Name of the node.
		name?: string

		// Elasticsearch tag line.
		tagline?: string
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

		// SHA-256 hex fingerprint (64 hexadecimal characters, no colons or separators)
		// of the server TLS certificate used to pin the connection instead of a full
		// CA chain
		ca_fingerprint?: string

		// PEM encoded certificate for client auth
		cert_data?: string

		// Path to a file containing the PEM encoded certificate for client auth
		cert_file?: string

		// A list of endpoints where the terraform provider will point to, this must
		// include the http(s) schema and port number.
		endpoints?: [...string]

		// ES Client Authentication field to be used with the JWT token
		es_client_authentication?: string

		// A list of headers to be sent with each request to Elasticsearch.
		headers?: [string]: string

		// Disable TLS certificate validation
		insecure?: bool

		// PEM encoded private key for client auth
		key_data?: string

		// Path to a file containing the PEM encoded private key for client auth
		key_file?: string

		// Password to use for API authentication to Elasticsearch.
		password?: string

		// Username to use for API authentication to Elasticsearch.
		username?: string
	})
}
