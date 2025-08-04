package data

#cloudflare_origin_ca_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_origin_ca_certificate")
	close({
		certificate?:    string
		certificate_id?: string
		csr?:            string
		expires_on?:     string
		hostnames?: [...string]
		filter?: close({
			limit?:   number
			offset?:  number
			zone_id!: string
		})
		id?:                 string
		request_type?:       string
		requested_validity?: number
	})
}
