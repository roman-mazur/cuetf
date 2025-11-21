package res

#cloudflare_token_validation_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_token_validation_rules")
	close({
		// Action to take on requests that match operations included in
		// `selector` and fail `expression`.
		// Available values: "log", "block".
		action!: string

		// Update rule order among zone rules.
		position?: close({
			// Move rule to after rule with this ID.
			after?: string

			// Move rule to before rule with this ID.
			before?: string

			// Move rule to this position
			index?: number
		})
		created_at?: string

		// A human-readable description that gives more details than
		// `title`.
		description!: string

		// Toggle rule on or off.
		enabled!: bool

		// Select operations covered by this rule.
		//
		// For details on selectors, see the [Cloudflare
		// Docs](https://developers.cloudflare.com/api-shield/security/jwt-validation/).
		selector!: close({
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

		// Rule expression. Requests that fail to match this expression
		// will be subject to `action`.
		//
		// For details on expressions, see the [Cloudflare
		// Docs](https://developers.cloudflare.com/api-shield/security/jwt-validation/).
		expression!: string

		// UUID.
		id?:           string
		last_updated?: string

		// A human-readable name for the rule.
		title!: string

		// Identifier.
		zone_id!: string
	})
}
