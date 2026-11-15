package res

cloudflare_access_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_access_rule")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
		account_id?: string

		// The available actions that a rule can apply to a matched request.
		allowed_modes?: [...string]

		// The rule configuration.
		configuration!: close({
			// For `target: ip`: The configuration target. You must set the target to `ip`
			// when specifying an IP address in the rule.
			//
			// For `target: ip6`: The configuration target. You must set the target to `ip6`
			// when specifying an IPv6 address in the rule.
			//
			// For `target: ip_range`: The configuration target. You must set the target to
			// `ip_range` when specifying an IP address range in the rule.
			//
			// For `target: asn`: The configuration target. You must set the target to `asn`
			// when specifying an Autonomous System Number (ASN) in the rule.
			//
			// For `target: country`: The configuration target. You must set the target to
			// `country` when specifying a country code in the rule.
			// Available values: "ip", "ip6", "ip_range", "asn", "country".
			target?: string

			// For `target: ip`: The IP address to match. This address will be compared to
			// the IP address of incoming requests.
			//
			// For `target: ip6`: The IPv6 address to match.
			//
			// For `target: ip_range`: The IP address range to match. You can only use
			// prefix lengths `/16` and `/24` for IPv4 ranges, and prefix lengths `/32`,
			// `/48`, and `/64` for IPv6 ranges.
			//
			// For `target: asn`: The AS number to match.
			//
			// For `target: country`: The two-letter ISO-3166-1 alpha-2 code to match. For
			// more information, refer to [IP Access rules:
			// Parameters](https://developers.cloudflare.com/waf/tools/ip-access-rules/parameters/#country).
			value?: string
		})

		// The timestamp of when the rule was created.
		created_on?: string

		// The unique identifier of the IP Access rule.
		id?: string

		// The action to apply to a matched request.
		// Available values: "block", "challenge", "whitelist", "js_challenge", "managed_challenge".
		mode!: string

		// The timestamp of when the rule was last modified.
		modified_on?: string

		// An informative summary of the rule, typically used as a reminder or explanation.
		notes?: string

		// All zones owned by the user will have the rule applied.
		scope?: close({
			// The contact email address of the user.
			email?: string

			// Defines an identifier.
			id?: string

			// Defines the scope of the rule.
			// Available values: "user", "organization".
			type?: string
		})

		// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
		zone_id?: string
	})
}
