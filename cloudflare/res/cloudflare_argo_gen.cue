package res

#cloudflare_argo: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_argo")
	id?:            string
	smart_routing?: string
	zone_id!:       string
}
