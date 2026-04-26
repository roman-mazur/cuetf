package data

#elasticstack_kibana_agentbuilder_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_kibana_agentbuilder_agent")
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

		// If `true`, exports the agent along with its tools and
		// workflows. If omitted, `false` is used (tool rows only list
		// `id`, `space_id`, and `tool_id` unless this is `true`).
		include_dependencies?: bool

		// Optional system instructions that define the agent behavior.
		instructions?: string

		// List of labels for the agent.
		labels?: [...string]

		// The agent name.
		name?: string

		// An identifier for the space. If space_id is not provided, the
		// default space is used.
		space_id?: string

		// Tools attached to the agent. When include_dependencies is true,
		// each entry includes full tool data and workflow YAML for
		// workflow-type tools. When false, only id (composite
		// space/tool), space_id, and tool_id are set.
		tools?: matchN(1, [close({
			// The tool configuration in JSON format.
			configuration?: string

			// Description of what the tool does.
			description?: string

			// The tool ID to look up.
			id?: string

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
			// populated for workflow-type tools. Requires Elastic Stack
			// v9.4.0 or later.
			workflow_configuration_yaml?: string

			// The ID of the referenced workflow. Only populated for
			// workflow-type tools. Requires Elastic Stack v9.4.0 or later.
			workflow_id?: string
		}), [...close({
			// The tool configuration in JSON format.
			configuration?: string

			// Description of what the tool does.
			description?: string

			// The tool ID to look up.
			id?: string

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
			// populated for workflow-type tools. Requires Elastic Stack
			// v9.4.0 or later.
			workflow_configuration_yaml?: string

			// The ID of the referenced workflow. Only populated for
			// workflow-type tools. Requires Elastic Stack v9.4.0 or later.
			workflow_id?: string
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
