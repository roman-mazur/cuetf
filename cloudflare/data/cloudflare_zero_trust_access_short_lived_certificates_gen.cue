package data

#cloudflare_zero_trust_access_short_lived_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_access_short_lived_certificates")
	close({
		// The items returned by the data source
		result?: matchN(1, [close({
			// The Application Audience (AUD) tag. Identifies the application
			// associated with the CA.
			aud?: string

			// The ID of the CA.
			id?: string

			// The public key to add to your SSH server configuration.
			public_key?: string
		}), [...close({
			// The Application Audience (AUD) tag. Identifies the application
			// associated with the CA.
			aud?: string

			// The ID of the CA.
			id?: string

			// The public key to add to your SSH server configuration.
			public_key?: string
		})]])

		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
