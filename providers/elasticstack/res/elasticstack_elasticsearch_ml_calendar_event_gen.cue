package res

#elasticstack_elasticsearch_ml_calendar_event: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_ml_calendar_event")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// The identifier for the calendar that owns the event. Must
		// contain lowercase alphanumeric characters (a-z and 0-9),
		// hyphens, or underscores. Must start and end with an
		// alphanumeric character.
		calendar_id!: string

		// A description of the scheduled event.
		description!: string

		// The end time of the scheduled event in RFC 3339 format.
		end_time!: string

		// The server-generated identifier for the event.
		event_id?: string

		// When set, changes the duration of the event to the specified
		// value in seconds (decimal digits as a string; the API uses a
		// JSON number). Requires Elasticsearch **8.16** or newer. Maps
		// to `force_time_shift` in the Elasticsearch API.
		force_time_shift?: string

		// Internal composite identifier of the resource.
		id?: string

		// If true, model updates are not generated for buckets that fall
		// inside the event period. When omitted, the request does not
		// send this field and Elasticsearch applies its default
		// behavior. Explicit values require Elasticsearch **8.16** or
		// newer. Maps to `skip_model_update` in the Elasticsearch API.
		skip_model_update?: bool

		// If true, results are not generated for buckets that fall inside
		// the event period. When omitted, the request does not send this
		// field and Elasticsearch applies its default behavior. Explicit
		// values require Elasticsearch **8.16** or newer. Maps to
		// `skip_result` in the Elasticsearch API.
		skip_result?: bool

		// The start time of the scheduled event in RFC 3339 format.
		start_time!: string
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
