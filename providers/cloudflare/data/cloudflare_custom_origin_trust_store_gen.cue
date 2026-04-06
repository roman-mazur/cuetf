package data

#cloudflare_custom_origin_trust_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_custom_origin_trust_store")
	close({
		// The zone's SSL certificate or certificate and the
		// intermediate(s).
		certificate?: string

		// Identifier.
		custom_origin_trust_store_id?: string

		// When the certificate expires.
		expires_on?: string

		// Identifier.
		id?: string

		// The certificate authority that issued the certificate.
		issuer?: string

		// The type of hash used for the certificate.
		signature?: string

		// Status of the zone's custom SSL.
		// Available values: "initializing", "pending_deployment",
		// "active", "pending_deletion", "deleted", "expired".
		status?: string

		// When the certificate was last modified.
		updated_at?: string

		// When the certificate was uploaded to Cloudflare.
		uploaded_on?: string

		// Identifier.
		zone_id!: string
		filter?: close({
			// Limit to the number of records returned.
			limit?: number

			// Offset the results
			offset?: number
		})
	})
}
