package res

#elasticstack_elasticsearch_security_system_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_security_system_user")
	close({
		// Specifies whether the user is enabled. The default value is
		// true.
		enabled?: bool

		// Internal identifier of the resource
		id?: string

		// The user's password. Passwords must be at least 6 characters
		// long.
		password?: string

		// A hash of the user's password. This must be produced using the
		// same hashing algorithm as has been configured for password
		// storage (see the [security settings
		// documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/security-settings.html#hashing-settings)).
		password_hash?: string
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// An identifier for the system user (see the [built-in users
		// documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/built-in-users.html)).
		username!: string
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
