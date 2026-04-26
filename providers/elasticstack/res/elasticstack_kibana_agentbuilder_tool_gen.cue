package res

#elasticstack_kibana_agentbuilder_tool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_agentbuilder_tool")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// The tool configuration as a JSON-encoded string. Use
		// `jsonencode()` to pass a configuration object.
		configuration!: string

		// The tool description.
		description?: string

		// The composite ID of the tool: `<tool_id>/<space_id>`.
		id?: string

		// An identifier for the Kibana space. If not provided, the
		// default space is used.
		space_id?: string

		// List of tags for the tool.
		tags?: [...string]

		// The tool ID.
		tool_id!: string

		// The tool type. Must be one of: [esql index_search workflow
		// mcp].
		type!: string
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
