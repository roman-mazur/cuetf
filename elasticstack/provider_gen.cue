package elasticstack

import "list"

#provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/provider")
	close({
		elasticsearch?: matchN(1, [#elasticsearch, list.MaxItems(1) & [...#elasticsearch]])
		fleet?: matchN(1, [#fleet, list.MaxItems(1) & [...#fleet]])
		kibana?: matchN(1, [#kibana, list.MaxItems(1) & [...#kibana]])
	})

	#elasticsearch: close({
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

	#fleet: close({
		// API Key to use for authentication to Fleet.
		api_key?: string

		// A list of paths to CA certificates to validate the certificate
		// presented by the Fleet server.
		ca_certs?: [...string]

		// The Fleet server where the terraform provider will point to,
		// this must include the http(s) schema and port number.
		endpoint?: string

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Fleet.
		password?: string

		// Username to use for API authentication to Fleet.
		username?: string
	})

	#kibana: close({
		// API Key to use for authentication to Kibana
		api_key?: string

		// A list of paths to CA certificates to validate the certificate
		// presented by the Kibana server.
		ca_certs?: [...string]

		// A comma-separated list of endpoints where the terraform
		// provider will point to, this must include the http(s) schema
		// and port number.
		endpoints?: [...string]

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Kibana.
		password?: string

		// Username to use for API authentication to Kibana.
		username?: string
	})
}
