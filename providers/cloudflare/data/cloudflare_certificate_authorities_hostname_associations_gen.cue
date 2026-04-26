package data

#cloudflare_certificate_authorities_hostname_associations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_certificate_authorities_hostname_associations")
	close({
		hostnames?: [...string]

		// Identifier.
		id?: string

		// The UUID to match against for a certificate that was uploaded
		// to the mTLS Certificate Management endpoint. If no
		// mtls_certificate_id is given, the results will be the
		// hostnames associated to your active Cloudflare Managed CA.
		mtls_certificate_id?: string

		// Identifier.
		zone_id?: string
	})
}
