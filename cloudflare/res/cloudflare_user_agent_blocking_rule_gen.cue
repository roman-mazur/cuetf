package res

#cloudflare_user_agent_blocking_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_user_agent_blocking_rule")
	close({
		// An informative summary of the rule. This value is sanitized and
		// any tags will be removed.
		description?: string

		// The unique identifier of the User Agent Blocking rule.
		id?: string

		// The action to apply to a matched request.
		// Available values: "block", "challenge", "whitelist",
		// "js_challenge", "managed_challenge".
		mode!: string

		// When true, indicates that the rule is currently paused.
		paused?: bool
		configuration!: close({
			// The configuration target. You must set the target to `ua` when
			// specifying a user agent in the rule.
			// Available values: "ua".
			target?: string

			// the user agent to exactly match
			value?: string
		})

		// Defines an identifier.
		zone_id!: string
	})
}
