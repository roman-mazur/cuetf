package res

#cloudflare_origin_ca_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_origin_ca_certificate")
	certificate?: string
	csr!:         string
	expires_on?:  string
	hostnames!: [...string]
	id?:                   string
	min_days_for_renewal?: number
	request_type!:         string
	requested_validity?:   number
}
