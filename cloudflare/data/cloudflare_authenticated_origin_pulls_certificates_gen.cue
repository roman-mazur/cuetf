package data

#cloudflare_authenticated_origin_pulls_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_authenticated_origin_pulls_certificates")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// The zone's leaf certificate.
			certificate?: string

			// Indicates whether zone-level authenticated origin pulls is
			// enabled.
			enabled?: bool

			// When the certificate from the authority expires.
			expires_on?: string

			// Identifier.
			id?: string

			// The certificate authority that issued the certificate.
			issuer?: string

			// The zone's private key.
			private_key?: string

			// The type of hash used for the certificate.
			signature?: string

			// Status of the certificate activation.
			// Available values: "initializing", "pending_deployment",
			// "pending_deletion", "active", "deleted",
			// "deployment_timed_out", "deletion_timed_out".
			status?: string

			// This is the time the certificate was uploaded.
			uploaded_on?: string
		}), [...close({
			// The zone's leaf certificate.
			certificate?: string

			// Indicates whether zone-level authenticated origin pulls is
			// enabled.
			enabled?: bool

			// When the certificate from the authority expires.
			expires_on?: string

			// Identifier.
			id?: string

			// The certificate authority that issued the certificate.
			issuer?: string

			// The zone's private key.
			private_key?: string

			// The type of hash used for the certificate.
			signature?: string

			// Status of the certificate activation.
			// Available values: "initializing", "pending_deployment",
			// "pending_deletion", "active", "deleted",
			// "deployment_timed_out", "deletion_timed_out".
			status?: string

			// This is the time the certificate was uploaded.
			uploaded_on?: string
		})]])

		// Identifier.
		zone_id!: string
	})
}
