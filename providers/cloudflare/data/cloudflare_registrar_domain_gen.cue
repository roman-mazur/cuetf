package data

#cloudflare_registrar_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_registrar_domain")
	close({
		// Identifier
		account_id?: string

		// Fully qualified domain name (FQDN) including the extension
		// (e.g., `example.com`, `mybrand.app`). The domain name uniquely
		// identifies a registration — the same domain cannot be
		// registered
		// twice, making it a natural idempotency key for registration
		// requests.
		domain_name!: string
	})
}
