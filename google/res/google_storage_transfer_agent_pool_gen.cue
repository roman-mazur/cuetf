package res

import "list"

#google_storage_transfer_agent_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_storage_transfer_agent_pool")
	close({
		// Specifies the client-specified AgentPool description.
		display_name?: string
		id?:           string

		// The ID of the agent pool to create.
		//
		// The agentPoolId must meet the following requirements:
		// * Length of 128 characters or less.
		// * Not start with the string goog.
		// * Start with a lowercase ASCII character, followed by:
		// * Zero or more: lowercase Latin alphabet characters, numerals,
		// hyphens (-), periods (.), underscores (_), or tildes (~).
		// * One or more numerals or lowercase ASCII characters.
		//
		// As expressed by the regular expression:
		// ^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$.
		name!:    string
		project?: string
		bandwidth_limit?: matchN(1, [#bandwidth_limit, list.MaxItems(1) & [...#bandwidth_limit]])

		// Specifies the state of the AgentPool.
		state?:    string
		timeouts?: #timeouts
	})

	#bandwidth_limit: close({
		// Bandwidth rate in megabytes per second, distributed across all
		// the agents in the pool.
		limit_mbps!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
