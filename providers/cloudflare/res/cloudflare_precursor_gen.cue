package res

cloudflare_precursor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_precursor")
	close({
		// The zone-level Precursor enforcement mode applied to requests that do
		// not match a more specific enforcement rule.
		// Available values: "off", "min-friction", "max-security".
		default_mode?: string

		// The ordered list of enforcement rules for the zone.
		enforcement_rules?: matchN(1, [close({
			// An informative description of the rule.
			description?: string

			// Whether the rule is active.
			enabled?: bool

			// The filter expression that determines which requests the rule matches.
			expression!: string

			// The read-only identifier that Cloudflare assigns to the rule.
			id?: string

			// The override mode Precursor applies to requests matching an enforcement
			// rule. Unlike `default_mode`, this cannot be `off`.
			// Available values: "min-friction", "max-security".
			mode!: string
		}), [...close({
			// An informative description of the rule.
			description?: string

			// Whether the rule is active.
			enabled?: bool

			// The filter expression that determines which requests the rule matches.
			expression!: string

			// The read-only identifier that Cloudflare assigns to the rule.
			id?: string

			// The override mode Precursor applies to requests matching an enforcement
			// rule. Unlike `default_mode`, this cannot be `off`.
			// Available values: "min-friction", "max-security".
			mode!: string
		})]])

		// Identifier.
		id?: string

		// Identifier.
		zone_id!: string
	})
}
