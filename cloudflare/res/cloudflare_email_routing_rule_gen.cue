package res

#cloudflare_email_routing_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_routing_rule")
	close({
		// List actions patterns.
		actions!: matchN(1, [close({
			// Type of supported action.
			// Available values: "drop", "forward", "worker".
			type!: string
			value?: [...string]
		}), [...close({
			// Type of supported action.
			// Available values: "drop", "forward", "worker".
			type!: string
			value?: [...string]
		})]])

		// Routing rule status.
		enabled?: bool

		// Routing rule identifier.
		id?: string

		// Matching patterns to forward to your actions.
		matchers!: matchN(1, [close({
			// Field for type matcher.
			// Available values: "to".
			field?: string

			// Type of matcher.
			// Available values: "all", "literal".
			type!: string

			// Value for matcher.
			value?: string
		}), [...close({
			// Field for type matcher.
			// Available values: "to".
			field?: string

			// Type of matcher.
			// Available values: "all", "literal".
			type!: string

			// Value for matcher.
			value?: string
		})]])

		// Routing rule name.
		name?: string

		// Priority of the routing rule.
		priority?: number

		// Identifier.
		zone_id!: string
	})
}
