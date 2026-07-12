package res

cloudflare_email_routing_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_email_routing_rule")
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

		// Routing rule identifier.
		id?: string

		// Routing rule name.
		name?: string

		// Public tag (script_tag) of the Worker that owns this rule. Required when
		// `source` is `wrangler`.
		owner_worker_tag?: string

		// Priority of the routing rule.
		priority?: number

		// Who manages the rule. `api` covers dashboard, generic API, and Terraform;
		// `wrangler` means the rule is managed by a Worker's wrangler.jsonc. Defaults
		// to `api` when omitted on write.
		// Available values: "api", "wrangler".
		source?: string

		// Identifier.
		zone_id!: string
	})
}
