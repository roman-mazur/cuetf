package data

#cloudflare_workers_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_custom_domain")
	close({
		account_id!:  string
		domain_id?:   string
		environment?: string
		hostname?:    string
		id?:          string
		service?:     string
		filter?: close({
			environment?: string
			hostname?:    string
			service?:     string
			zone_id?:     string
			zone_name?:   string
		})
		zone_id?:   string
		zone_name?: string
	})
}
