package data

#cloudflare_mtls_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_mtls_certificate")
	close({
		// Identifier.
		account_id!: string

		// Indicates whether the certificate is a CA or leaf certificate.
		ca?: bool

		// The uploaded root CA certificate.
		certificates?: string

		// When the certificate expires.
		expires_on?: string

		// Identifier.
		id?: string

		// The certificate authority that issued the certificate.
		issuer?: string

		// Identifier.
		mtls_certificate_id!: string

		// Optional unique name for the certificate. Only used for human
		// readability.
		name?: string

		// The certificate serial number.
		serial_number?: string

		// The type of hash used for the certificate.
		signature?: string

		// This is the time the certificate was uploaded.
		uploaded_on?: string
	})
}
