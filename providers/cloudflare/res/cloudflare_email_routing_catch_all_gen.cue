package res

cloudflare_email_routing_catch_all: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_email_routing_catch_all")
	close({
		// List actions for the catch-all routing rule.
		actions!: matchN(1, [close({
			// Type of action for catch-all rule.
			// Available values: "drop", "forward", "worker".
			type!: string
			value?: [...string]
		}), [...close({
			// Type of action for catch-all rule.
			// Available values: "drop", "forward", "worker".
			type!: string
			value?: [...string]
		})]])

		// Routing rule status.
		enabled?: bool

		// List of matchers for the catch-all routing rule.
		matchers!: matchN(1, [close({
			// Type of matcher. Default is 'all'.
			// Available values: "all".
			type!: string
		}), [...close({
			// Type of matcher. Default is 'all'.
			// Available values: "all".
			type!: string
		})]])

		// Identifier.
		id?: string

		// Routing rule name.
		name?: string

		// Public tag (script_tag) of the Worker that owns this rule. Required when
		// `source` is `wrangler`.
		owner_worker_tag?: string

		// Who manages the rule. `api` covers dashboard, generic API, and Terraform;
		// `wrangler` means the rule is managed by a Worker's wrangler.jsonc. Defaults
		// to `api` when omitted on write.
		// Available values: "api", "wrangler".
		source?: string

		// Identifier.
		zone_id!: string
	})
}
