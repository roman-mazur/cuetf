package data

#cloudflare_token_validation_rules_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_token_validation_rules_list")
	close({
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

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
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

			// Rule expression. Requests that fail to match this expression
			// will be subject to `action`.
			//
			// For details on expressions, see the [Cloudflare
			// Docs](https://developers.cloudflare.com/api-shield/security/jwt-validation/).
			expression?: string

			// UUID.
			id?:           string
			last_updated?: string

			// A human-readable name for the rule.
			title?: string
		}), [...close({
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

			// Rule expression. Requests that fail to match this expression
			// will be subject to `action`.
			//
			// For details on expressions, see the [Cloudflare
			// Docs](https://developers.cloudflare.com/api-shield/security/jwt-validation/).
			expression?: string

			// UUID.
			id?:           string
			last_updated?: string

			// A human-readable name for the rule.
			title?: string
		})]])

		// Select rules with these IDs.
		rule_id?: string

		// Select rules using any of these token configurations.
		token_configuration?: [...string]

		// Identifier.
		zone_id!: string
	})
}
