package data

#cloudflare_keyless_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_keyless_certificate")
	close({
		created_on?: string
		enabled?:    bool
		host?:       string
		tunnel?: close({
			private_ip?: string
			vnet_id?:    string
		})
		id?:                     string
		keyless_certificate_id?: string
		modified_on?:            string
		name?:                   string
		permissions?: [...string]
		port?:    number
		status?:  string
		zone_id!: string
	})
}
