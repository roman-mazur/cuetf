package res

#elasticstack_apm_agent_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_apm_agent_configuration")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// The agent name is used by the UI to determine which settings to
		// display.
		agent_name?: string

		// Internal identifier of the resource.
		id?: string

		// The environment of the service.
		service_environment?: string

		// The name of the service.
		service_name!: string

		// Agent configuration settings.
		settings!: [string]: string
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
