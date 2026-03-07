package data

#cloudflare_custom_origin_trust_stores: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_custom_origin_trust_stores")
	close({
		// Limit to the number of records returned.
		limit?: number

		// Max items to fetch, default: 1000
		max_items?: number

		// Offset the results
		offset?: number

		// Identifier.
		zone_id!: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// The zone's SSL certificate or certificate and the
			// intermediate(s).
			certificate?: string

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
		}), [...close({
			// The zone's SSL certificate or certificate and the
			// intermediate(s).
			certificate?: string

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
		})]])
	})
}
