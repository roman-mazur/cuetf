package data

#cloudflare_account_dns_settings_internal_views: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_account_dns_settings_internal_views")
	close({
		account_id!: string
		direction?:  string
		match?:      string
		name?: close({
			contains?:   string
			endswith?:   string
			exact?:      string
			startswith?: string
		})
		max_items?: number
		result?: matchN(1, [close({
			created_time?:  string
			id?:            string
			modified_time?: string
			name?:          string
			zones?: [...string]
		}), [...close({
			created_time?:  string
			id?:            string
			modified_time?: string
			name?:          string
			zones?: [...string]
		})]])
		order?:     string
		zone_id?:   string
		zone_name?: string
	})
}
