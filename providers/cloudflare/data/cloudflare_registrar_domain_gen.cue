package data

cloudflare_registrar_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_registrar_domain")
	close({
		// Identifier.
		account_id!: string

		// Provides a fully qualified domain name (FQDN), including the extension
		// (e.g., `example.com`, `mybrand.app`). The domain name uniquely identifies
		// a registration. Cloudflare permits only one registration per domain, making
		// the domain name a natural idempotency key for registration requests.
		domain_name!: string
	})
}
