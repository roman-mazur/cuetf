package res

#cloudflare_keyless_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_keyless_certificate")
	close({
		bundle_method?: string
		certificate!:   string
		created_on?:    string
		tunnel?: close({
			private_ip!: string
			vnet_id!:    string
		})
		host!:        string
		id?:          string
		modified_on?: string
		name?:        string
		permissions?: [...string]
		port?:    number
		status?:  string
		zone_id!: string
	})
}
