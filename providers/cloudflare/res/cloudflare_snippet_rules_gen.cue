package res

#cloudflare_snippet_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_snippet_rules")
	close({
		// Lists snippet rules.
		rules!: matchN(1, [close({
			// Provide an informative description of the rule.
			description?: string

			// Indicate whether to execute the rule.
			enabled?: bool

			// Define the expression that determines which traffic matches the
			// rule.
			expression!: string

			// Specify the unique ID of the rule.
			id?: string

			// Specify the timestamp of when the rule was last modified.
			last_updated?: string

			// Identify the snippet.
			snippet_name!: string
		}), [...close({
			// Provide an informative description of the rule.
			description?: string

			// Indicate whether to execute the rule.
			enabled?: bool

			// Define the expression that determines which traffic matches the
			// rule.
			expression!: string

			// Specify the unique ID of the rule.
			id?: string

			// Specify the timestamp of when the rule was last modified.
			last_updated?: string

			// Identify the snippet.
			snippet_name!: string
		})]])

		// Use this field to specify the unique ID of the zone.
		zone_id?: string
	})
}
