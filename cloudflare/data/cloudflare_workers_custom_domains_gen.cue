package data

#cloudflare_workers_custom_domains: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_custom_domains")
	close({
		account_id!:  string
		environment?: string
		hostname?:    string
		max_items?:   number
		result?: matchN(1, [close({
			environment?: string
			hostname?:    string
			id?:          string
			service?:     string
			zone_id?:     string
			zone_name?:   string
		}), [...close({
			environment?: string
			hostname?:    string
			id?:          string
			service?:     string
			zone_id?:     string
			zone_name?:   string
		})]])
		service?:   string
		zone_id?:   string
		zone_name?: string
	})
}
