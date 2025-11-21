package data

#cloudflare_waiting_room_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_waiting_room_rules")
	close({
		// The action to take when the expression matches.
		// Available values: "bypass_waiting_room".
		action?: string

		// The description of the rule.
		description?: string

		// When set to true, the rule is enabled.
		enabled?: bool

		// Criteria defining when there is a match for the current rule.
		expression?:   string
		id?:           string
		last_updated?: string

		// The version of the rule.
		version?:         string
		waiting_room_id!: string

		// Identifier.
		zone_id!: string
	})
}
