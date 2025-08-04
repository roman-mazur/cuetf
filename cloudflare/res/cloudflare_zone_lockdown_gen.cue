package res

#cloudflare_zone_lockdown: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_lockdown")
	close({
		// The timestamp of when the rule was created.
		created_on?: string

		// A list of IP addresses or CIDR ranges that will be allowed to
		// access the URLs specified in the Zone Lockdown rule. You can
		// include any number of `ip` or `ip_range` configurations.
		configurations!: matchN(1, [close({
			// The configuration target. You must set the target to `ip` when
			// specifying an IP address in the Zone Lockdown rule.
			// Available values: "ip", "ip_range".
			target?: string

			// The IP address to match. This address will be compared to the
			// IP address of incoming requests.
			value?: string
		}), [...close({
			// The configuration target. You must set the target to `ip` when
			// specifying an IP address in the Zone Lockdown rule.
			// Available values: "ip", "ip_range".
			target?: string

			// The IP address to match. This address will be compared to the
			// IP address of incoming requests.
			value?: string
		})]])

		// An informative summary of the rule. This value is sanitized and
		// any tags will be removed.
		description?: string

		// The unique identifier of the Zone Lockdown rule.
		id?: string

		// The timestamp of when the rule was last modified.
		modified_on?: string

		// When true, indicates that the rule is currently paused.
		paused?: bool

		// The priority of the rule to control the processing order. A
		// lower number indicates higher priority. If not provided, any
		// rules with a configured priority will be processed before
		// rules without a priority.
		priority?: number

		// The URLs to include in the current WAF override. You can use
		// wildcards. Each entered URL will be escaped before use, which
		// means you can only use simple wildcard patterns.
		urls!: [...string]

		// Defines an identifier.
		zone_id!: string
	})
}
