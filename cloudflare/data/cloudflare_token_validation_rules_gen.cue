package data

#cloudflare_token_validation_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_token_validation_rules")
	close({
		// Action to take on requests that match operations included in
		// `selector` and fail `expression`.
		// Available values: "log", "block".
		action?: string

		// A human-readable description that gives more details than
		// `title`.
		description?: string
		created_at?:  string

		// Toggle rule on or off.
		enabled?: bool

		// Rule expression. Requests that fail to match this expression
		// will be subject to `action`.
		//
		// For details on expressions, see the [Cloudflare
		// Docs](https://developers.cloudflare.com/api-shield/security/jwt-validation/).
		expression?: string
		filter?: close({
			// Action to take on requests that match operations included in
			// `selector` and fail `expression`.
			// Available values: "log", "block".
			action?: string

			// Toggle rule on or off.
			enabled?: bool

			// Select rules with this host in `include`.
			host?: string

			// Select rules with this host in `include`.
			hostname?: string

			// Select rules with these IDs.
			id?: string

			// Select rules with these IDs.
			rule_id?: string

			// Select rules using any of these token configurations.
			token_configuration?: [...string]
		})

		// UUID.
		id?:           string
		last_updated?: string

		// Select operations covered by this rule.
		//
		// For details on selectors, see the [Cloudflare
		// Docs](https://developers.cloudflare.com/api-shield/security/jwt-validation/).
		selector?: close({
			// Ignore operations that were otherwise included by `include`.
			exclude?: matchN(1, [close({
				// Excluded operation IDs.
				operation_ids?: [...string]
			}), [...close({
				// Excluded operation IDs.
				operation_ids?: [...string]
			})]])

			// Select all matching operations.
			include?: matchN(1, [close({
				// Included hostnames.
				host?: [...string]
			}), [...close({
				// Included hostnames.
				host?: [...string]
			})]])
		})

		// UUID.
		rule_id?: string

		// A human-readable name for the rule.
		title?: string

		// Identifier.
		zone_id!: string
	})
}
