package res

#cloudflare_registrar_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_registrar_domain")
	close({
		// Identifier
		account_id?: string

		// Auto-renew controls whether subscription is automatically
		// renewed upon domain expiration.
		auto_renew?: bool

		// Fully qualified domain name (FQDN) including the extension
		// (e.g., `example.com`, `mybrand.app`). The domain name uniquely
		// identifies a registration — the same domain cannot be
		// registered
		// twice, making it a natural idempotency key for registration
		// requests.
		domain_name!: string

		// Shows whether a registrar lock is in place for a domain.
		locked?: bool

		// Privacy option controls redacting WHOIS information.
		privacy?: bool
	})
}
