package data

#cloudflare_zero_trust_access_short_lived_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_short_lived_certificate")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// UUID.
		app_id!: string

		// The Application Audience (AUD) tag. Identifies the application
		// associated with the CA.
		aud?: string

		// UUID.
		id?: string

		// The public key to add to your SSH server configuration.
		public_key?: string

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
