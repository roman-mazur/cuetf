package data

#cloudflare_zero_trust_access_service_tokens: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_service_tokens")
	close({
		account_id?: string
		max_items?:  number
		name?:       string
		result?: matchN(1, [close({
			client_id?:    string
			created_at?:   string
			duration?:     string
			expires_at?:   string
			id?:           string
			last_seen_at?: string
			name?:         string
			updated_at?:   string
		}), [...close({
			client_id?:    string
			created_at?:   string
			duration?:     string
			expires_at?:   string
			id?:           string
			last_seen_at?: string
			name?:         string
			updated_at?:   string
		})]])
		search?:  string
		zone_id?: string
	})
}
