package data

cloudflare_zone_lockdown: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zone_lockdown")
	close({
		// A list of IP addresses or CIDR ranges that will be allowed to access the URLs
		// specified in the Zone Lockdown rule. You can include any number of `ip` or
		// `ip_range` configurations.
		configurations?: matchN(1, [close({
			// For `target: ip`: The configuration target. You must set the target to `ip`
			// when specifying an IP address in the Zone Lockdown rule.
			//
			// For `target: ip_range`: The configuration target. You must set the target to
			// `ip_range` when specifying an IP address range in the Zone Lockdown rule.
			// Available values: "ip", "ip_range".
			target?: string

			// For `target: ip`: The IP address to match. This address will be compared to
			// the IP address of incoming requests.
			//
			// For `target: ip_range`: The IP address range to match. You can only use
			// prefix lengths `/16` and `/24`.
			value?: string
		}), [...close({
			// For `target: ip`: The configuration target. You must set the target to `ip`
			// when specifying an IP address in the Zone Lockdown rule.
			//
			// For `target: ip_range`: The configuration target. You must set the target to
			// `ip_range` when specifying an IP address range in the Zone Lockdown rule.
			// Available values: "ip", "ip_range".
			target?: string

			// For `target: ip`: The IP address to match. This address will be compared to
			// the IP address of incoming requests.
			//
			// For `target: ip_range`: The IP address range to match. You can only use
			// prefix lengths `/16` and `/24`.
			value?: string
		})]])

		// The timestamp of when the rule was created.
		created_on?: string
		filter?: close({
			// The timestamp of when the rule was created.
			created_on?: string

			// A string to search for in the description of existing rules.
			description?: string

			// A string to search for in the description of existing rules.
			description_search?: string

			// A single IP address to search for in existing rules.
			ip?: string

			// A single IP address range to search for in existing rules.
			ip_range_search?: string

			// A single IP address to search for in existing rules.
			ip_search?: string

			// The timestamp of when the rule was last modified.
			modified_on?: string

			// The priority of the rule to control the processing order. A lower number
			// indicates higher priority. If not provided, any rules with a configured
			// priority will be processed before rules without a priority.
			priority?: number

			// A single URI to search for in the list of URLs of existing rules.
			uri_search?: string
		})

		// An informative summary of the rule.
		description?: string

		// The unique identifier of the Zone Lockdown rule.
		id?: string

		// The unique identifier of the Zone Lockdown rule.
		lock_downs_id?: string

		// The timestamp of when the rule was last modified.
		modified_on?: string

		// When true, indicates that the rule is currently paused.
		paused?: bool

		// The URLs to include in the rule definition. You can use wildcards. Each
		// entered URL will be escaped before use, which means you can only use simple
		// wildcard patterns.
		urls?: [...string]

		// Defines an identifier.
		zone_id?: string
	})
}
