package data

#cloudflare_access_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_access_rule")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// The available actions that a rule can apply to a matched
		// request.
		allowed_modes?: [...string]

		// The rule configuration.
		configuration?: close({
			// The configuration target. You must set the target to `ip` when
			// specifying an IP address in the rule.
			// Available values: "ip", "ip6", "ip_range", "asn", "country".
			target?: string

			// The IP address to match. This address will be compared to the
			// IP address of incoming requests.
			value?: string
		})

		// The timestamp of when the rule was created.
		created_on?: string

		// Unique identifier for a rule.
		id?: string

		// The action to apply to a matched request.
		// Available values: "block", "challenge", "whitelist",
		// "js_challenge", "managed_challenge".
		mode?: string
		filter?: close({
			// Defines the direction used to sort returned rules.
			// Available values: "asc", "desc".
			direction?: string

			// Defines the search requirements. When set to `all`, all the
			// search requirements must match. When set to `any`, only one of
			// the search requirements has to match.
			// Available values: "any", "all".
			match?: string

			// The action to apply to a matched request.
			// Available values: "block", "challenge", "whitelist",
			// "js_challenge", "managed_challenge".
			mode?: string

			// Defines the string to search for in the notes of existing IP
			// Access rules.
			// Notes: For example, the string 'attack' would match IP Access
			// rules with notes 'Attack 26/02' and 'Attack 27/02'. The search
			// is case insensitive.
			notes?: string
			configuration?: close({
				// Defines the target to search in existing rules.
				// Available values: "ip", "ip_range", "asn", "country".
				target?: string

				// Defines the target value to search for in existing rules: an IP
				// address, an IP address range, or a country code, depending on
				// the provided `configuration.target`.
				// Notes: You can search for a single IPv4 address, an IP address
				// range with a subnet of '/16' or '/24', or a two-letter
				// ISO-3166-1 alpha-2 country code.
				value?: string
			})

			// Defines the field used to sort returned rules.
			// Available values: "configuration.target",
			// "configuration.value", "mode".
			order?: string
		})

		// The timestamp of when the rule was last modified.
		modified_on?: string

		// An informative summary of the rule, typically used as a
		// reminder or explanation.
		notes?: string

		// Unique identifier for a rule.
		rule_id?: string

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

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
