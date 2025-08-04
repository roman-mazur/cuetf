package res

#cloudflare_zero_trust_access_service_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_service_token")
	close({
		account_id?:    string
		client_id?:     string
		client_secret?: string
		duration?:      string
		expires_at?:    string
		id?:            string
		name!:          string
		zone_id?:       string
	})
}
