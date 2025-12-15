package res

#elasticstack_elasticsearch_data_stream_lifecycle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_data_stream_lifecycle")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// Every document added to this data stream will be stored at
		// least for this time frame. When empty, every document in this
		// data stream will be stored indefinitely
		data_retention?: string

		// Data stream lifecycle on/off.
		enabled?: bool

		// Downsampling configuration objects, each defining an after
		// interval representing when the backing index is meant to be
		// downsampled and a fixed_interval representing the downsampling
		// interval.
		downsampling?: matchN(1, [close({
			// Interval representing when the backing index is meant to be
			// downsampled
			after!: string

			// The interval at which to aggregate the original time series
			// index.
			fixed_interval!: string
		}), [...close({
			// Interval representing when the backing index is meant to be
			// downsampled
			after!: string

			// The interval at which to aggregate the original time series
			// index.
			fixed_interval!: string
		})]])

		// Determines how wildcard patterns in the `indices` parameter
		// match data streams and indices. Supports comma-separated
		// values, such as `closed,hidden`.
		expand_wildcards?: string

		// Internal identifier of the resource.
		id?: string

		// Name of the data stream. Supports wildcards.
		name!: string
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
