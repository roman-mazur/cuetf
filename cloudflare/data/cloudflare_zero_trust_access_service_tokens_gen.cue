package data

#cloudflare_zero_trust_access_service_tokens: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_service_tokens")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The name of the service token.
		name?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// The Client ID for the service token. Access will check for this
			// value in the `CF-Access-Client-ID` request header.
			client_id?:  string
			created_at?: string

			// The duration for how long the service token will be valid. Must
			// be in the format `300ms` or `2h45m`. Valid time units are: ns,
			// us (or µs), ms, s, m, h. The default is 1 year in hours
			// (8760h).
			duration?:   string
			expires_at?: string

			// The ID of the service token.
			id?:           string
			last_seen_at?: string

			// The name of the service token.
			name?:       string
			updated_at?: string
		}), [...close({
			// The Client ID for the service token. Access will check for this
			// value in the `CF-Access-Client-ID` request header.
			client_id?:  string
			created_at?: string

			// The duration for how long the service token will be valid. Must
			// be in the format `300ms` or `2h45m`. Valid time units are: ns,
			// us (or µs), ms, s, m, h. The default is 1 year in hours
			// (8760h).
			duration?:   string
			expires_at?: string

			// The ID of the service token.
			id?:           string
			last_seen_at?: string

			// The name of the service token.
			name?:       string
			updated_at?: string
		})]])

		// Search for service tokens by other listed query parameters.
		search?: string

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
