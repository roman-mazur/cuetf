package data

#cloudflare_authenticated_origin_pulls_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_authenticated_origin_pulls_certificates")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// Identifier.
		zone_id!: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// The zone's leaf certificate.
			certificate?: string

			// When the certificate from the authority expires.
			expires_on?: string

			// Identifier.
			id?: string

			// The certificate authority that issued the certificate.
			issuer?: string

			// The serial number on the uploaded certificate.
			serial_number?: string

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

			// When the certificate from the authority expires.
			expires_on?: string

			// Identifier.
			id?: string

			// The certificate authority that issued the certificate.
			issuer?: string

			// The serial number on the uploaded certificate.
			serial_number?: string

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
	})
}
