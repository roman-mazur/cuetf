package res

#elasticstack_kibana_agentbuilder_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_agentbuilder_agent")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// The agent ID.
		agent_id!: string

		// Hex color code for the agent avatar (e.g., `#BFDBFF`).
		avatar_color?: string

		// Symbol or initials for the agent avatar (e.g., `SI`).
		avatar_symbol?: string

		// The agent description.
		description?: string

		// The composite ID of the agent: `<space_id>/<agent_id>`.
		id?: string

		// Optional system instructions that define the agent behavior.
		instructions?: string

		// Set of labels for the agent.
		labels?: [...string]

		// The agent name.
		name!: string

		// An identifier for the space. If not provided, the default space
		// is used.
		space_id?: string

		// Set of tool IDs that the agent can use.
		tools?: [...string]
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
