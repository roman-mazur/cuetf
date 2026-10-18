package data

cloudflare_monetization_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_monetization_rules")
	close({
		// The unique ID of the zone.
		id?: string

		// The zone's payment rules, in the order they are evaluated. Empty when the
		// zone has no payment rules.
		rules?: matchN(1, [close({
			// 0x-prefixed 20-byte hexadecimal Ethereum address. Mixed-case addresses must
			// carry a valid EIP-55 checksum; all-lowercase or all-uppercase addresses are
			// also accepted. The address must pass wallet screening whenever its rule is
			// deployed or patched.
			address?:     string
			description?: string

			// Wirefilter expression identifying the requests that require payment.
			// Forwarded verbatim to the Rulesets API, which validates its syntax.
			expression?: string
			enabled?:    bool

			// The server-assigned unique ID of the payment rule. Stable across full-ruleset replacements.
			id?: string

			// Price in the smallest indivisible unit of the configured payment token,
			// encoded as a decimal string. Must be a canonical decimal integer in [1000,
			// 100000000]: no leading zeros, and a bare JSON number is rejected. The price
			// is required for the fixed-price schemes ("exact" and "upto") and must be at
			// least 1000, the smallest amount the payment facilitator can settle ($0.001
			// for a 6-decimal token such as USDC), and at most 100000000 ($100 for a
			// 6-decimal token). When the scheme is "origin_controlled" the origin server
			// sets pricing dynamically and the rule carries no price: the field must be
			// omitted — any provided value, including "0", is rejected because it would
			// not be enforced. Responses always encode this as a string and omit it for
			// "origin_controlled" rules; the pattern matches exactly the set of values the
			// server accepts.
			price?: string

			// X402 payment scheme. "exact" requires the specified payment amount; "upto"
			// permits a payment up to the specified amount. Both fixed-price schemes
			// require the price field.
			// Available values: "exact", "upto", "origin_controlled".
			scheme?: string
		}), [...close({
			// 0x-prefixed 20-byte hexadecimal Ethereum address. Mixed-case addresses must
			// carry a valid EIP-55 checksum; all-lowercase or all-uppercase addresses are
			// also accepted. The address must pass wallet screening whenever its rule is
			// deployed or patched.
			address?:     string
			description?: string

			// Wirefilter expression identifying the requests that require payment.
			// Forwarded verbatim to the Rulesets API, which validates its syntax.
			expression?: string
			enabled?:    bool

			// The server-assigned unique ID of the payment rule. Stable across full-ruleset replacements.
			id?: string

			// Price in the smallest indivisible unit of the configured payment token,
			// encoded as a decimal string. Must be a canonical decimal integer in [1000,
			// 100000000]: no leading zeros, and a bare JSON number is rejected. The price
			// is required for the fixed-price schemes ("exact" and "upto") and must be at
			// least 1000, the smallest amount the payment facilitator can settle ($0.001
			// for a 6-decimal token such as USDC), and at most 100000000 ($100 for a
			// 6-decimal token). When the scheme is "origin_controlled" the origin server
			// sets pricing dynamically and the rule carries no price: the field must be
			// omitted — any provided value, including "0", is rejected because it would
			// not be enforced. Responses always encode this as a string and omit it for
			// "origin_controlled" rules; the pattern matches exactly the set of values the
			// server accepts.
			price?: string

			// X402 payment scheme. "exact" requires the specified payment amount; "upto"
			// permits a payment up to the specified amount. Both fixed-price schemes
			// require the price field.
			// Available values: "exact", "upto", "origin_controlled".
			scheme?: string
		})]])

		// The unique ID of the zone.
		zone_id!: string
	})
}
