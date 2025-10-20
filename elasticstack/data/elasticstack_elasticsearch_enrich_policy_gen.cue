package data

#elasticstack_elasticsearch_enrich_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_enrich_policy")
	close({
		// Fields to add to matching incoming documents. These fields must
		// be present in the source indices.
		enrich_fields?: [...string]

		// Internal identifier of the resource
		id?: string

		// Array of one or more source indices used to create the enrich
		// index.
		indices?: [...string]

		// Field from the source indices used to match incoming documents.
		match_field?: string

		// The name of the policy.
		name!: string

		// The type of enrich policy, can be one of geo_match, match,
		// range.
		policy_type?: string
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// Query used to filter documents in the enrich index. The policy
		// only uses documents matching this query to enrich incoming
		// documents. Defaults to a match_all query.
		query?: string
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
