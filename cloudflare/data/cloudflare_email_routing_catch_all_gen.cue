package data

#cloudflare_email_routing_catch_all: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_routing_catch_all")
	close({
		// List actions for the catch-all routing rule.
		actions?: matchN(1, [close({
			// Type of action for catch-all rule.
			// Available values: "drop", "forward", "worker".
			type?: string
			value?: [...string]
		}), [...close({
			// Type of action for catch-all rule.
			// Available values: "drop", "forward", "worker".
			type?: string
			value?: [...string]
		})]])

		// Routing rule status.
		enabled?: bool

		// Routing rule identifier.
		id?: string

		// Routing rule name.
		name?: string

		// List of matchers for the catch-all routing rule.
		matchers?: matchN(1, [close({
			// Type of matcher. Default is 'all'.
			// Available values: "all".
			type?: string
		}), [...close({
			// Type of matcher. Default is 'all'.
			// Available values: "all".
			type?: string
		})]])

		// Identifier.
		zone_id!: string
	})
}
