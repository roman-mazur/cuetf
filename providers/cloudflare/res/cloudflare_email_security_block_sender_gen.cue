package res

cloudflare_email_security_block_sender: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_email_security_block_sender")
	close({
		// Identifier.
		account_id!: string
		comments?:   string
		created_at?: string

		// Blocked sender pattern identifier.
		id?:          string
		is_regex!:    bool
		modified_at?: string

		// The pattern value to match. The format depends on `pattern_type`: a valid
		// email address for EMAIL (e.g. `user@example.com`), a valid domain name for
		// DOMAIN (e.g. `example.com`), or a plain IPv4 or IPv6 address or CIDR block
		// for IP (e.g. `1.2.3.4`, `1.2.3.0/24`, `2606:4700:4700::1111`, or
		// `2606:4700:4700::/48`); the API rejects private or unique-local, loopback,
		// link-local, unspecified, and IPv4 broadcast addresses, including their
		// IPv4-mapped IPv6 equivalents.
		pattern!: string

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
		pattern_type!: string
	})
}
