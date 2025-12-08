package res

#cloudflare_zero_trust_access_mtls_hostname_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_access_mtls_hostname_settings")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// Request client certificates for this hostname in China. Can
		// only be set to true if this zone is china network enabled.
		china_network?: bool

		// Client Certificate Forwarding is a feature that takes the
		// client cert provided by the eyeball to the edge, and forwards
		// it to the origin as a HTTP header to allow logging on the
		// origin.
		client_certificate_forwarding?: bool
		settings!: matchN(1, [close({
			// Request client certificates for this hostname in China. Can
			// only be set to true if this zone is china network enabled.
			china_network!: bool

			// Client Certificate Forwarding is a feature that takes the
			// client cert provided by the eyeball to the edge, and forwards
			// it to the origin as a HTTP header to allow logging on the
			// origin.
			client_certificate_forwarding!: bool

			// The hostname that these settings apply to.
			hostname!: string
		}), [...close({
			// Request client certificates for this hostname in China. Can
			// only be set to true if this zone is china network enabled.
			china_network!: bool

			// Client Certificate Forwarding is a feature that takes the
			// client cert provided by the eyeball to the edge, and forwards
			// it to the origin as a HTTP header to allow logging on the
			// origin.
			client_certificate_forwarding!: bool

			// The hostname that these settings apply to.
			hostname!: string
		})]])

		// The hostname that these settings apply to.
		hostname?: string

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
