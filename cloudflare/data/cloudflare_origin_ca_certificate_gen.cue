package data

#cloudflare_origin_ca_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_origin_ca_certificate")
	certificate?: string
	expires_on?:  string
	hostnames?: [...string]
	id!:           string
	request_type?: string
	revoked_at?:   string
}
