package res

#elasticstack_elasticsearch_security_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_security_user")
	close({
		// The email of the user.
		email?: string

		// Specifies whether the user is enabled. The default value is
		// true.
		enabled?: bool

		// The full name of the user.
		full_name?: string

		// Internal identifier of the resource
		id?: string

		// Arbitrary metadata that you want to associate with the user.
		metadata?: string

		// The user's password. Passwords must be at least 6 characters
		// long. Note: Consider using `password_wo` for better security
		// with ephemeral resources.
		password?: string

		// A hash of the user's password. This must be produced using the
		// same hashing algorithm as has been configured for password
		// storage (see the [security settings
		// documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/security-settings.html#hashing-settings)).
		password_hash?: string

		// Write-only password attribute for use with ephemeral resources.
		// Passwords must be at least 6 characters long. This attribute
		// is designed for use with ephemeral resources like
		// `vault_kv_secret_v2` to prevent secrets from being stored in
		// the Terraform state. Must be used with `password_wo_version`.
		password_wo?: string
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// Version identifier for the write-only password. This field is
		// used to trigger updates when the password changes. Required
		// when `password_wo` is set. Typically, you would use a hash of
		// the password or a version identifier from your secret
		// management system.
		password_wo_version?: string

		// A set of roles the user has. The roles determine the user's
		// access permissions.
		roles!: [...string]

		// An identifier for the user (see the [security API put user
		// documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-user.html#security-api-put-user-path-params)
		// for more details).
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
