package data

#cloudflare_page_shield_policies: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_page_shield_policies")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// The action to take if the expression matches
			// Available values: "allow", "log".
			action?: string

			// A description for the policy
			description?: string

			// Whether the policy is enabled
			enabled?: bool

			// The expression which must match for the policy to be applied,
			// using the Cloudflare Firewall rule expression syntax
			expression?: string

			// Identifier
			id?: string

			// The policy which will be applied
			value?: string
		}), [...close({
			// The action to take if the expression matches
			// Available values: "allow", "log".
			action?: string

			// A description for the policy
			description?: string

			// Whether the policy is enabled
			enabled?: bool

			// The expression which must match for the policy to be applied,
			// using the Cloudflare Firewall rule expression syntax
			expression?: string

			// Identifier
			id?: string

			// The policy which will be applied
			value?: string
		})]])

		// Identifier
		zone_id!: string
	})
}
