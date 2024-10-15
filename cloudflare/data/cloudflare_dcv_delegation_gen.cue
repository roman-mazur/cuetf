package data

#cloudflare_dcv_delegation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dcv_delegation")
	hostname?: string
	id?:       string
	zone_id!:  string
}
