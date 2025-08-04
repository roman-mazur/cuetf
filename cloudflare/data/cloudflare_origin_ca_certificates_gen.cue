package data

#cloudflare_origin_ca_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_origin_ca_certificates")
	close({
		limit?:     number
		max_items?: number
		offset?:    number
		result?: matchN(1, [close({
			certificate?: string
			csr?:         string
			expires_on?:  string
			hostnames?: [...string]
			id?:                 string
			request_type?:       string
			requested_validity?: number
		}), [...close({
			certificate?: string
			csr?:         string
			expires_on?:  string
			hostnames?: [...string]
			id?:                 string
			request_type?:       string
			requested_validity?: number
		})]])
		zone_id!: string
	})
}
