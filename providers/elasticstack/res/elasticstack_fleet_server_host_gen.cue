package res

#elasticstack_fleet_server_host: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_fleet_server_host")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Set as default.
		default?: bool

		// Unique identifier of the Fleet server host.
		host_id?: string

		// A list of hosts.
		hosts!: [...string]

		// The ID of this resource.
		id?: string

		// The name of the Fleet server host.
		name!: string

		// The Kibana space IDs where this server host is available. When
		// set, the server host will be created and managed within the
		// specified space. Note: The order of space IDs does not matter
		// as this is a set.
		space_ids?: [...string]
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
