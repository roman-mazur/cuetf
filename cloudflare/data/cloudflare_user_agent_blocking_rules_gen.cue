package data

#cloudflare_user_agent_blocking_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_user_agent_blocking_rules")
	close({
		// The items returned by the data source
		result?: matchN(1, [close({
			// The configuration object for the current rule.
			configuration?: close({
				// The configuration target for this rule. You must set the target
				// to `ua` for User Agent Blocking rules.
				target?: string

				// The exact user agent string to match. This value will be
				// compared to the received `User-Agent` HTTP header value.
				value?: string
			})

			// An informative summary of the rule.
			description?: string

			// The unique identifier of the User Agent Blocking rule.
			id?: string

			// The action to apply to a matched request.
			// Available values: "block", "challenge", "js_challenge",
			// "managed_challenge".
			mode?: string

			// When true, indicates that the rule is currently paused.
			paused?: bool
		}), [...close({
			// The configuration object for the current rule.
			configuration?: close({
				// The configuration target for this rule. You must set the target
				// to `ua` for User Agent Blocking rules.
				target?: string

				// The exact user agent string to match. This value will be
				// compared to the received `User-Agent` HTTP header value.
				value?: string
			})

			// An informative summary of the rule.
			description?: string

			// The unique identifier of the User Agent Blocking rule.
			id?: string

			// The action to apply to a matched request.
			// Available values: "block", "challenge", "js_challenge",
			// "managed_challenge".
			mode?: string

			// When true, indicates that the rule is currently paused.
			paused?: bool
		})]])

		// A string to search for in the description of existing rules.
		description?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// When true, indicates that the rule is currently paused.
		paused?: bool

		// A string to search for in the user agent values of existing
		// rules.
		user_agent?: string

		// Defines an identifier.
		zone_id!: string
	})
}
