package data

#elasticstack_fleet_output: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_fleet_output")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Generated ID for the outputs.
		id?: string

		// The Kibana space ID where this output is available.
		space_id?: string

		// The list of outputs
		outputs?: matchN(1, [close({
			// Fingerprint of the Elasticsearch CA certificate.
			ca_sha256?: string

			// Fingerprint of trusted CA.
			ca_trusted_fingerprint?: string

			// Advanced YAML configuration.
			config_yaml?: string

			// This output is the default for agent integrations.
			default_integrations?: bool

			// This output is the default for agent monitoring.
			default_monitoring?: bool

			// A list of hosts.
			hosts?: [...string]

			// Unique identifier of the output.
			id?: string

			// The name of the output.
			name?: string

			// The output type.
			type?: string
		}), [...close({
			// Fingerprint of the Elasticsearch CA certificate.
			ca_sha256?: string

			// Fingerprint of trusted CA.
			ca_trusted_fingerprint?: string

			// Advanced YAML configuration.
			config_yaml?: string

			// This output is the default for agent integrations.
			default_integrations?: bool

			// This output is the default for agent monitoring.
			default_monitoring?: bool

			// A list of hosts.
			hosts?: [...string]

			// Unique identifier of the output.
			id?: string

			// The name of the output.
			name?: string

			// The output type.
			type?: string
		})]])
	})

	#kibana_connection: close({
		// API Key to use for authentication to Kibana
		api_key?: string

		// Bearer Token to use for authentication to Kibana
		bearer_token?: string

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
