package data

google_agent_registry_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_agent_registry_agent")
	close({
		// The unique identifier for the Agent.
		agent_id?: string

		// Attributes of the Agent.
		attributes?: [string]: string

		// Create time.
		create_time?: string

		// Obtained from the A2A Agent Card. The description of the Agent.
		description?: string

		// Obtained from the A2A Agent Card. The display name of the Agent.
		display_name?: string

		// A filter string that identifies a unique Agent.
		filter?: string

		// The OSS agent framework used to develop the agent. Currently supported
		// values: "google-adk", "langchain", "langgraph", "ag2", "llama-index",
		// "custom".
		framework?: string
		id?:        string

		// The location of the resource.
		location!: string
		project?:  string

		// The connection details for the Agent.
		protocols?: [...close({
			interfaces?: [...close({
				protocol_binding?: string
				url?:              string
			})]
			protocol_version?: string
			type?:             string
		})]

		// Obtained from the A2A Agent Card. Skills represent the ability of an agent.
		// It is largely a descriptive concept but represents a more focused set of
		// behaviors that the agent is likely to succeed at.
		skills?: [...close({
			description?: string
			examples?: [...string]
			id?:   string
			name?: string
			tags?: [...string]
		})]

		// Update time.
		update_time?: string

		// The URN of the Agent.
		urn?: string

		// Obtained from the A2A Agent Card. Contains the version of the Agent.
		version?: string
	})
}
