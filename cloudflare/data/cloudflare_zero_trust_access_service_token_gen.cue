package data

#cloudflare_zero_trust_access_service_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_service_token")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// The Client ID for the service token. Access will check for this
		// value in the `CF-Access-Client-ID` request header.
		client_id?:  string
		created_at?: string

		// The duration for how long the service token will be valid. Must
		// be in the format `300ms` or `2h45m`. Valid time units are: ns,
		// us (or µs), ms, s, m, h. The default is 1 year in hours
		// (8760h).
		duration?: string

		// UUID.
		id?:         string
		expires_at?: string

		// The name of the service token.
		name?:         string
		last_seen_at?: string
		filter?: close({
			// The name of the service token.
			name?: string

			// Search for service tokens by other listed query parameters.
			search?: string
		})

		// UUID.
		service_token_id?: string
		updated_at?:       string

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
