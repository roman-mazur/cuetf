package res

cloudflare_email_security_block_sender: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_email_security_block_sender")
	close({
		// Identifier.
		account_id!: string
		comments?:   string
		created_at?: string

		// Blocked sender pattern identifier
		id?:          string
		is_regex!:    bool
		modified_at?: string

		// The pattern value to match against. Format depends on `pattern_type`:
		// - EMAIL: a valid email address, e.g. `user@example.com`
		// - DOMAIN: a valid domain name, e.g. `example.com`
		// - IP: a plain IPv4 address (e.g. `1.2.3.4`) or an IPv4 CIDR block (e.g.
		// `1.2.3.0/24`). Only globally reachable addresses are accepted; private,
		// loopback, link-local, and unspecified addresses are rejected.
		pattern!: string

		// Type of pattern matching.
		// - EMAIL: matches a full email address (e.g. `user@example.com`)
		// - DOMAIN: matches a domain name (e.g. `example.com`)
		// - IP: matches a plain IPv4 address (e.g. `1.2.3.4`) or an IPv4 CIDR block
		// (e.g. `1.2.3.0/24`). Only globally reachable addresses are accepted.
		// - UNKNOWN: deprecated, cannot be used when creating or updating policies, but
		// may be returned for existing entries.
		// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
		pattern_type!: string
	})
}
