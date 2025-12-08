package res

#cloudflare_access_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_access_rule")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// The available actions that a rule can apply to a matched
		// request.
		allowed_modes?: [...string]

		// The rule configuration.
		configuration!: close({
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

		// The unique identifier of the IP Access rule.
		id?: string

		// The action to apply to a matched request.
		// Available values: "block", "challenge", "whitelist",
		// "js_challenge", "managed_challenge".
		mode!: string

		// The timestamp of when the rule was last modified.
		modified_on?: string

		// An informative summary of the rule, typically used as a
		// reminder or explanation.
		notes?: string

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
