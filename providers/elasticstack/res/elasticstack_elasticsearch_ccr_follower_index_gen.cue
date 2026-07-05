package res

elasticstack_elasticsearch_ccr_follower_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_ccr_follower_index")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// Local data stream name when following a data stream leader. Requires
		// Elasticsearch 8.4.0 or later. Write-only; not returned by the CCR info API.
		data_stream_name?: string
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

		// When true, destroy deletes the underlying index after unfollowing. When false
		// (default), the index is opened as a regular index.
		delete_index_on_destroy?: bool

		// Internal identifier of the resource in the format `<cluster_uuid>/<name>`.
		id?: string

		// Name of the leader index on the remote cluster.
		leader_index!: string

		// Maximum number of outstanding read requests from the remote cluster.
		max_outstanding_read_requests?: number

		// Maximum number of outstanding write requests on the follower.
		max_outstanding_write_requests?: number

		// Maximum number of operations to pull per read from the remote cluster.
		max_read_request_operation_count?: number

		// Maximum size in bytes per read batch from the remote cluster (e.g. `"100mb"`).
		max_read_request_size?: string

		// Maximum time to wait before retrying a failed operation (e.g. `"10s"`).
		max_retry_delay?: string

		// Maximum number of operations queued for writing.
		max_write_buffer_count?: number

		// Maximum total bytes of operations queued for writing (e.g. `"100mb"`).
		max_write_buffer_size?: string

		// Maximum number of operations per bulk write request on the follower.
		max_write_request_operation_count?: number

		// Maximum total bytes per bulk write request on the follower (e.g. `"100mb"`).
		max_write_request_size?: string

		// Name of the follower index.
		name!: string

		// Maximum time to wait for new operations on the remote cluster when synchronized (e.g. `"10m"`).
		read_poll_timeout?: string

		// Remote cluster alias containing the leader index.
		remote_cluster!: string

		// JSON-encoded index settings to override from the leader index. Write-only;
		// not returned by the CCR info API.
		settings_raw?: string

		// Desired replication status: `active` or `paused`.
		status?: string
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
