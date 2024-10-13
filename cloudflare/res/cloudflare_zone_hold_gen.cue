package res

#cloudflare_zone_hold: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_zone_hold")
	hold!:               bool
	hold_after?:         string
	id?:                 string
	include_subdomains?: bool
	zone_id!:            string
}
