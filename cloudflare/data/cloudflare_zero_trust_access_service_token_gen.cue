package data

#cloudflare_zero_trust_access_service_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_service_token")
	close({
		filter?: close({
			name?:   string
			search?: string
		})
		account_id?:       string
		client_id?:        string
		created_at?:       string
		duration?:         string
		expires_at?:       string
		id?:               string
		last_seen_at?:     string
		name?:             string
		service_token_id?: string
		updated_at?:       string
		zone_id?:          string
	})
}
