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

		// Integration inputs mapped by input ID.
		inputs?: [string]: close({
			// Input defaults.
			defaults?: close({
				// Stream-level defaults mapped by stream ID.
				streams?: [string]: close({
					// Default enabled state for the stream.
					enabled?: bool

					// Stream-level variable defaults as JSON.
					vars?: string
				})

				// Input-level variable defaults as JSON.
				vars?: string
			})

			// Enable the input.
			enabled?: bool

			// Input streams mapped by stream ID.
			streams?: [string]: close({
				// Enable the stream.
				enabled?: bool

				// Stream-level variables as JSON.
				vars?: string
			})

			// Input-level variables as JSON.
			vars?: string
		})

		// The version of the integration package.
		integration_version!: string

		// The name of the integration policy.
		name!: string

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

		// Integration-level variables as JSON. Variables vary depending
		// on the integration package.
		//
		// The provider injects the '__tf_provider_context' property into
		// this JSON object. In most cases this field will be ignored
		// when computing the difference between the current and desired
		// state. In some cases however, this property may be shown in
		// the Terraform plan. Any changes to the '__tf_provider_context'
		// property can be safely ignored. This property is used
		// internally by the provider, and you should not set this
		// property within your Terraform configuration.
		vars_json?: string
	})
}
