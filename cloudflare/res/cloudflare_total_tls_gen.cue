package res

#cloudflare_total_tls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_total_tls")
	certificate_authority?: string
	enabled!:               bool
	id?:                    string
	zone_id!:               string
}
