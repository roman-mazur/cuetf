package res

#cloudflare_authenticated_origin_pulls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_authenticated_origin_pulls")
	close({
		// Identifier.
		cert_id?: string

		// Status of the certificate or the association.
		// Available values: "initializing", "pending_deployment",
		// "pending_deletion", "active", "deleted",
		// "deployment_timed_out", "deletion_timed_out".
		cert_status?: string

		// The time when the certificate was updated.
		cert_updated_at?: string

		// The time when the certificate was uploaded.
		cert_uploaded_on?: string

		// The hostname certificate.
		certificate?: string

		// The time when the certificate was created.
		created_at?: string

		// Indicates whether hostname-level authenticated origin pulls is
		// enabled. A null value voids the association.
		enabled?: bool

		// The date when the certificate expires.
		expires_on?: string

		// The hostname on the origin for which the client certificate
		// uploaded will be used.
		hostname?: string

		// Identifier.
		id?: string

		// The certificate authority that issued the certificate.
		issuer?: string

		// The hostname certificate's private key.
		private_key?: string

		// The serial number on the uploaded certificate.
		serial_number?: string

		// The type of hash used for the certificate.
		signature?: string

		// Status of the certificate or the association.
		// Available values: "initializing", "pending_deployment",
		// "pending_deletion", "active", "deleted",
		// "deployment_timed_out", "deletion_timed_out".
		status?: string
		config!: matchN(1, [close({
			// Certificate identifier tag.
			cert_id?: string

			// Indicates whether hostname-level authenticated origin pulls is
			// enabled. A null value voids the association.
			enabled?: bool

			// The hostname on the origin for which the client certificate
			// uploaded will be used.
			hostname?: string
		}), [...close({
			// Certificate identifier tag.
			cert_id?: string

			// Indicates whether hostname-level authenticated origin pulls is
			// enabled. A null value voids the association.
			enabled?: bool

			// The hostname on the origin for which the client certificate
			// uploaded will be used.
			hostname?: string
		})]])

		// The time when the certificate was updated.
		updated_at?: string

		// Identifier.
		zone_id!: string
	})
}
