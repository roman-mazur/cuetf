package res

#elasticstack_elasticsearch_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_script")
	close({
		// Context in which the script or search template should run.
		context?: string

		// Internal identifier of the resource
		id?: string

		// Script language. For search templates, use `mustache`.
		lang!: string

		// Parameters for the script or search template.
		params?: string

		// Identifier for the stored script. Must be unique within the
		// cluster.
		script_id!: string

		// For scripts, a string containing the script. For search
		// templates, an object containing the search template.
		source!: string
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
