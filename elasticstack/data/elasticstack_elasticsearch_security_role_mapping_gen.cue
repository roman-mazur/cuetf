package data

#elasticstack_elasticsearch_security_role_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_security_role_mapping")
	close({
		// Mappings that have `enabled` set to `false` are ignored when
		// role mapping is performed.
		enabled?: bool

		// Internal identifier of the resource
		id?: string

		// Additional metadata that helps define which roles are assigned
		// to each user. Keys beginning with `_` are reserved for system
		// usage.
		metadata?: string

		// The distinct name that identifies the role mapping, used solely
		// as an identifier.
		name!: string

		// A list of mustache templates that will be evaluated to
		// determine the roles names that should granted to the users
		// that match the role mapping rules.
		role_templates?: string

		// A list of role names that are granted to the users that match
		// the role mapping rules.
		roles?: [...string]
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// The rules that determine which users should be matched by the
		// mapping. A rule is a logical condition that is expressed by
		// using a JSON DSL.
		rules?: string
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
