package res

elasticstack_elasticsearch_snapshot_lifecycle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_snapshot_lifecycle")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// Determines how wildcard patterns in the `indices` parameter match data
		// streams and indices. Supports comma-separated values, such as
		// `closed,hidden`.
		expand_wildcards?: string
		timeouts?: close({
			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			create?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
			// applicable if changes are saved into state before the destroy operation
			// occurs.
			delete?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Read operations occur during any refresh or
			// planning operation when refresh is enabled.
			read?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			update?: string
		})

		// Time period after which a snapshot is considered expired and eligible for deletion.
		expire_after?: string

		// Feature states to include in the snapshot.
		feature_states?: [...string]

		// Internal identifier of the resource
		id?: string

		// If `false`, the snapshot fails if any data stream or index in indices is
		// missing or closed. If `true`, the snapshot ignores missing or closed data
		// streams and indices.
		ignore_unavailable?: bool

		// If `true`, include the cluster state in the snapshot.
		include_global_state?: bool

		// List of data streams and indices to include in the snapshot.
		indices?: [...string]

		// Maximum number of snapshots to retain, even if the snapshots have not yet expired.
		max_count?: number

		// Attaches arbitrary metadata to the snapshot.
		metadata?: string

		// Minimum number of snapshots to retain, even if the snapshots have expired.
		min_count?: number

		// ID for the snapshot lifecycle policy you want to create or update.
		name!: string

		// If `false`, the entire snapshot will fail if one or more indices included in
		// the snapshot do not have all primary shards available.
		partial?: bool

		// Repository used to store snapshots created by this policy.
		repository!: string

		// Periodic or absolute schedule at which the policy creates snapshots.
		schedule!: string

		// Name automatically assigned to each snapshot created by the policy.
		snapshot_name?: string
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
