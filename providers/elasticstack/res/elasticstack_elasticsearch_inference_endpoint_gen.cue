package res

#elasticstack_elasticsearch_inference_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_inference_endpoint")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// Configuration for chunking input text, as a JSON object.
		// Applicable only for embedding task types.
		chunking_settings?: string

		// Internal identifier of the resource.
		id?: string

		// The unique identifier of the inference endpoint.
		inference_id!: string

		// The service type for the inference endpoint (e.g. `openai`,
		// `cohere`, `elasticsearch`).
		service!: string

		// Settings specific to the service provider, as a JSON object.
		// May include credentials and model identifiers.
		service_settings!: string

		// Task-specific settings, as a JSON object. Optional and
		// service-dependent. Only keys explicitly set here are tracked;
		// server-applied defaults returned by the API are ignored to
		// avoid perpetual drift.
		task_settings?: string

		// must be one of [`sparse_embedding`, `text_embedding`, `rerank`,
		// `completion`, `chat_completion`, `embedding`]
		task_type?: string
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
