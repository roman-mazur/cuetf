package res

#cloudflare_keyless_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_keyless_certificate")
	bundle_method?: string
	certificate!:   string
	enabled?:       bool
	host!:          string
	id?:            string
	name?:          string
	port?:          number
	status?:        string
	zone_id!:       string
}
