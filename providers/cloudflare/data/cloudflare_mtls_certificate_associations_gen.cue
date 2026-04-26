package data

#cloudflare_mtls_certificate_associations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_mtls_certificate_associations")
	close({
		// Identifier.
		account_id?: string

		// Identifier.
		mtls_certificate_id!: string

		// The service using the certificate.
		service?: string

		// Certificate deployment status for the given service.
		status?: string
	})
}
