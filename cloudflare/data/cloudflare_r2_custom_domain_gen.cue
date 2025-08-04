package data

#cloudflare_r2_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_r2_custom_domain")
	close({
		account_id!:  string
		bucket_name!: string
		domain!:      string
		status?: close({
			ownership?: string
			ssl?:       string
		})
		enabled?:   bool
		min_tls?:   string
		zone_id?:   string
		zone_name?: string
	})
}
