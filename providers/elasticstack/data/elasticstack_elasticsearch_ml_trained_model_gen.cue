package data

elasticstack_elasticsearch_ml_trained_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_ml_trained_model")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// The time when the trained model was created.
		create_time?: string

		// Information on the creator of the trained model.
		created_by?: string

		// Any field map described in the inference configuration takes precedence.
		default_field_map?: [string]: string

		// The free-text description of the trained model.
		description?: string

		// True if the full model definition is present.
		fully_defined?: bool

		// Internal identifier of the resource
		id?: string

		// JSON string of the default inference configuration.
		inference_config_json?: string

		// JSON string of the model input field names.
		input_json?: string

		// The license level of the trained model.
		license_level?: string

		// JSON string of the model metadata.
		metadata_json?: string

		// The identifier for the trained model.
		model_id!: string

		// The estimated memory usage in bytes to keep the trained model in memory.
		model_size_bytes?: number

		// The model type.
		model_type?: string

		// The platform identifier (e.g. linux-x86_64).
		platform_architecture?: string

		// A set of tags for the trained model.
		tags?: [...string]

		// The Elasticsearch version number in which the trained model was created.
		version?: string
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
