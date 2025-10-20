package res

#elasticstack_fleet_integration_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_fleet_integration_policy")
	close({
		// ID of the agent policy.
		agent_policy_id?: string

		// List of agent policy IDs.
		agent_policy_ids?: [...string]

		// The description of the integration policy.
		description?: string

		// Enable the integration policy.
		enabled?: bool

		// Force operations, such as creation and deletion, to occur.
		force?: bool

		// The ID of this resource.
		id?: string

		// The name of the integration package.
		integration_name!: string

		// The version of the integration package.
		integration_version!: string
		input?: matchN(1, [#input, [...#input]])

		// The name of the integration policy.
		name!: string

		// The namespace of the integration policy.
		namespace!: string

		// Unique identifier of the integration policy.
		policy_id?: string

		// Integration-level variables as JSON.
		vars_json?: string
	})

	#input: close({
		// Enable the input.
		enabled?: bool

		// The identifier of the input.
		input_id!: string

		// Input streams as JSON.
		streams_json?: string

		// Input variables as JSON.
		vars_json?: string
	})
}
