package data

#cloudflare_snippet_rules_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_snippet_rules_list")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// An informative description of the rule.
			description?: string

			// Whether the rule should be executed.
			enabled?: bool

			// The expression defining which traffic will match the rule.
			expression?: string

			// The unique ID of the rule.
			id?: string

			// The timestamp of when the rule was last modified.
			last_updated?: string

			// The identifying name of the snippet.
			snippet_name?: string
		}), [...close({
			// An informative description of the rule.
			description?: string

			// Whether the rule should be executed.
			enabled?: bool

			// The expression defining which traffic will match the rule.
			expression?: string

			// The unique ID of the rule.
			id?: string

			// The timestamp of when the rule was last modified.
			last_updated?: string

			// The identifying name of the snippet.
			snippet_name?: string
		})]])

		// The unique ID of the zone.
		zone_id!: string
	})
}
