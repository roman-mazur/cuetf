package res

#elasticstack_elasticsearch_ml_datafeed_state: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ml_datafeed_state")
	close({
		// Identifier for the ML datafeed.
		datafeed_id!: string
		timeouts?: close({
			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of
			// numbers and unit suffixes, such as "30s" or "2h45m". Valid
			// time units are "s" (seconds), "m" (minutes), "h" (hours).
			create?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of
			// numbers and unit suffixes, such as "30s" or "2h45m". Valid
			// time units are "s" (seconds), "m" (minutes), "h" (hours).
			update?: string
		})

		// Timeout for the operation. Examples: `30s`, `5m`, `1h`. Default
		// is `30s`.
		datafeed_timeout?: string

		// The time that the datafeed should end collecting data. When not
		// specified, the datafeed continues in real-time. This property
		// must be specified in RFC 3339 format.
		end?: string

		// When stopping a datafeed, use to forcefully stop it.
		force?: bool

		// Internal identifier of the resource
		id?: string

		// The time that the datafeed should start collecting data. When
		// not specified, the datafeed starts in real-time. This property
		// must be specified in RFC 3339 format.
		start?: string

		// The desired state for the ML datafeed. Valid values are
		// `started` and `stopped`.
		state!: string
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])
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
