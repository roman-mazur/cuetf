package data

google_agent_registry_mcp_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_agent_registry_mcp_server")
	close({
		// Attributes of the MCP Server.
		attributes?: [string]: string

		// Create time.
		create_time?: string

		// The description of the MCP Server.
		description?: string

		// The display name of the MCP Server.
		display_name?: string

		// A filter string that identifies a unique MCP server.
		filter?: string
		id?:     string

		// The connection details for the MCP Server.
		interfaces?: [...close({
			protocol_binding?: string
			url?:              string
		})]

		// The location of the resource.
		location!: string

		// The unique identifier for the MCP server.
		mcp_server_id?: string
		project?:       string

		// A list of tools available with the MCP Server.
		tools?: [...close({
			annotations?: [...close({
				destructive_hint?: bool
				idempotent_hint?:  bool
				open_world_hint?:  bool
				read_only_hint?:   bool
				title?:            string
			})]
			description?: string
			name?:        string
		})]

		// Update time.
		update_time?: string

		// The URN of the MCP Server.
		urn?: string
	})
}
