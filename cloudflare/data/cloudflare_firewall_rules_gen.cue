package data

#cloudflare_firewall_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_firewall_rules")
	close({
		// The action to search for. Must be an exact match.
		action?: string

		// A case-insensitive string to find in the description.
		description?: string

		// The unique identifier of the firewall rule.
		id?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// The action to apply to a matched request. The `log` action is
			// only available on an Enterprise plan.
			// Available values: "block", "challenge", "js_challenge",
			// "managed_challenge", "allow", "log", "bypass".
			action?: string

			// An informative summary of the firewall rule.
			description?: string

			// The unique identifier of the firewall rule.
			id?: string

			// When true, indicates that the firewall rule is currently
			// paused.
			paused?: bool

			// The priority of the rule. Optional value used to define the
			// processing order. A lower number indicates a higher priority.
			// If not provided, rules with a defined priority will be
			// processed before rules without a priority.
			priority?: number
			products?: [...string]

			// A short reference tag. Allows you to select related firewall
			// rules.
			ref?: string
			filter?: close({
				// When true, indicates that the firewall rule was deleted.
				deleted?: bool

				// An informative summary of the filter.
				description?: string

				// The filter expression. For more information, refer to
				// [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
				expression?: string

				// The unique identifier of the filter.
				id?: string

				// When true, indicates that the filter is currently paused.
				paused?: bool

				// A short reference tag. Allows you to select related filters.
				ref?: string
			})
		}), [...close({
			// The action to apply to a matched request. The `log` action is
			// only available on an Enterprise plan.
			// Available values: "block", "challenge", "js_challenge",
			// "managed_challenge", "allow", "log", "bypass".
			action?: string

			// An informative summary of the firewall rule.
			description?: string

			// The unique identifier of the firewall rule.
			id?: string

			// When true, indicates that the firewall rule is currently
			// paused.
			paused?: bool

			// The priority of the rule. Optional value used to define the
			// processing order. A lower number indicates a higher priority.
			// If not provided, rules with a defined priority will be
			// processed before rules without a priority.
			priority?: number
			products?: [...string]

			// A short reference tag. Allows you to select related firewall
			// rules.
			ref?: string
			filter?: close({
				// When true, indicates that the firewall rule was deleted.
				deleted?: bool

				// An informative summary of the filter.
				description?: string

				// The filter expression. For more information, refer to
				// [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
				expression?: string

				// The unique identifier of the filter.
				id?: string

				// When true, indicates that the filter is currently paused.
				paused?: bool

				// A short reference tag. Allows you to select related filters.
				ref?: string
			})
		})]])

		// Max items to fetch, default: 1000
		max_items?: number

		// When true, indicates that the firewall rule is currently
		// paused.
		paused?: bool

		// Defines an identifier.
		zone_id!: string
	})
}
