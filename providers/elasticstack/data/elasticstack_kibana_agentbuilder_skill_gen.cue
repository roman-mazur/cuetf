package data

#elasticstack_kibana_agentbuilder_skill: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_kibana_agentbuilder_skill")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Skill instructions content as markdown.
		content?: string

		// Description of what the skill does.
		description?: string

		// The composite ID of the skill: `<space_id>/<skill_id>`.
		id?: string

		// Human-readable name for the skill.
		name?: string

		// The skill ID to look up. Accepts either a bare skill id or a
		// composite `<space_id>/<skill_id>` string.
		skill_id!: string

		// An identifier for the Kibana space. If not provided, the
		// default space is used unless the `skill_id` argument supplies
		// a composite space.
		space_id?: string

		// Set of tool IDs from the tool registry that this skill
		// references.
		tool_ids?: [...string]

		// Ordered list of referenced-content entries. Order is preserved
		// as returned by the API.
		referenced_content?: matchN(1, [close({
			// Content of the reference.
			content?: string

			// Name of the referenced content.
			name?: string

			// Relative path of the referenced content.
			relative_path?: string
		}), [...close({
			// Content of the reference.
			content?: string

			// Name of the referenced content.
			name?: string

			// Relative path of the referenced content.
			relative_path?: string
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
