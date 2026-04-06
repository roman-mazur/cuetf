package data

#cloudflare_firewall_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_firewall_rule")
	close({
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

		// The unique identifier of the firewall rule.
		rule_id?: string

		// Defines an identifier.
		zone_id!: string
	})
}
