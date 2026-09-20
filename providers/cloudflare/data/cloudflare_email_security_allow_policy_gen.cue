package data

cloudflare_email_security_allow_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_email_security_allow_policy")
	close({
		// Identifier.
		account_id!: string
		comments?:   string
		created_at?: string
		filter?: close({
			// The sorting direction.
			// Available values: "asc", "desc".
			direction?: string

			// Filter to show only policies where messages from the sender are exempted from
			// Spam, Spoof, and Bulk dispositions (not Malicious or Suspicious).
			is_acceptable_sender?: bool

			// Filter to show only policies where messages to the recipient bypass all detections.
			is_exempt_recipient?: bool

			// Filter to show only policies where messages from the sender bypass all
			// detections and link following.
			is_trusted_sender?: bool

			// Field to sort by.
			// Available values: "pattern", "created_at".
			order?:   string
			pattern?: string

			// Type of pattern matching.
			// - EMAIL: matches a full email address (e.g. `user@example.com`)
			// - DOMAIN: matches a domain name (e.g. `example.com`)
			// - IP: matches a plain IPv4 or IPv6 address (e.g. `1.2.3.4` or
			// `2606:4700:4700::1111`) or CIDR block (e.g. `1.2.3.0/24` or
			// `2606:4700:4700::/48`). The API rejects private or unique-local, loopback,
			// link-local, unspecified, and IPv4 broadcast addresses, including their
			// IPv4-mapped IPv6 equivalents.
			// - UNKNOWN: deprecated; you cannot use this when creating or updating
			// policies, but it may appear on existing entries.
			// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
			pattern_type?: string

			// Search term for filtering records. Behavior may change.
			search?: string

			// Filter to show only policies that enforce DMARC, SPF, or DKIM authentication.
			verify_sender?: bool
		})

		// Allow policy identifier.
		id?: string

		// Exempts messages from this sender from Spam, Spoof and Bulk dispositions
		// only; Malicious and Suspicious dispositions still apply.
		is_acceptable_sender?: bool

		// Bypasses all detections for messages to this recipient.
		is_exempt_recipient?: bool
		is_regex?:            bool

		// Bypasses all detections and link following for messages from this sender.
		is_trusted_sender?: bool
		modified_at?:       string

		// The pattern value to match. The format depends on `pattern_type`: a valid
		// email address for EMAIL (e.g. `user@example.com`), a valid domain name for
		// DOMAIN (e.g. `example.com`), or a plain IPv4 or IPv6 address or CIDR block
		// for IP (e.g. `1.2.3.4`, `1.2.3.0/24`, `2606:4700:4700::1111`, or
		// `2606:4700:4700::/48`); the API rejects private or unique-local, loopback,
		// link-local, unspecified, and IPv4 broadcast addresses, including their
		// IPv4-mapped IPv6 equivalents.
		pattern?: string

		// Type of pattern matching.
		// - EMAIL: matches a full email address (e.g. `user@example.com`)
		// - DOMAIN: matches a domain name (e.g. `example.com`)
		// - IP: matches a plain IPv4 or IPv6 address (e.g. `1.2.3.4` or
		// `2606:4700:4700::1111`) or CIDR block (e.g. `1.2.3.0/24` or
		// `2606:4700:4700::/48`). The API rejects private or unique-local, loopback,
		// link-local, unspecified, and IPv4 broadcast addresses, including their
		// IPv4-mapped IPv6 equivalents.
		// - UNKNOWN: deprecated; you cannot use this when creating or updating
		// policies, but it may appear on existing entries.
		// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
		pattern_type?: string

		// Allow policy identifier.
		policy_id?: string

		// Enforce DMARC, SPF or DKIM authentication. When on, Email Security only
		// honors policies that pass authentication.
		verify_sender?: bool
	})
}
