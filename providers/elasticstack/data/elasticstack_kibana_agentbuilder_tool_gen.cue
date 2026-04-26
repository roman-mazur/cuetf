package data

#elasticstack_kibana_agentbuilder_tool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_kibana_agentbuilder_tool")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// The tool configuration in JSON format.
		configuration?: string

		// Description of what the tool does.
		description?: string

		// The tool ID to look up.
		id!: string

		// When true, the workflow referenced by this tool will also be
		// included. Only valid when the tool type is `workflow`.
		// Requires Kibana 9.4.0 or above. Defaults to false.
		include_workflow?: bool

		// Whether the tool is read-only.
		readonly?: bool

		// An identifier for the space. If space_id is not provided, the
		// default space is used.
		space_id?: string

		// Tags for categorizing and organizing tools.
		tags?: [...string]

		// The ID of the tool.
		tool_id?: string

		// The type of the tool (esql, index_search, workflow, mcp).
		type?: string

		// The YAML configuration of the referenced workflow. Only
		// populated when `include_workflow` is true.
		workflow_configuration_yaml?: string

		// The ID of the referenced workflow. Only populated when
		// `include_workflow` is true.
		workflow_id?: string
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
