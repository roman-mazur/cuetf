package res

#cloudflare_certificate_authorities_hostname_associations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_certificate_authorities_hostname_associations")
	close({
		hostnames?: [...string]

		// Identifier.
		id?: string

		// The UUID for a certificate that was uploaded to the mTLS
		// Certificate Management endpoint. If no mtls_certificate_id is
		// given, the hostnames will be associated to your active
		// Cloudflare Managed CA.
		mtls_certificate_id?: string

		// Identifier.
		zone_id!: string
	})
}
