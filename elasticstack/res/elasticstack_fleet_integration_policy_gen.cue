package res

#elasticstack_fleet_integration_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_fleet_integration_policy")
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

		// The name of the integration policy.
		name!: string
		input?: matchN(1, [#input, [...#input]])

		// The namespace of the integration policy.
		namespace!: string

		// The ID of the output to send data to. When not specified, the
		// default output of the agent policy will be used.
		output_id?: string

		// Unique identifier of the integration policy.
		policy_id?: string

		// The Kibana space IDs where this integration policy is
		// available. When set, must match the space_ids of the
		// referenced agent policy. If not set, will be inherited from
		// the agent policy. Note: The order of space IDs does not matter
		// as this is a set.
		space_ids?: [...string]

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
