package res

#cloudflare_workers_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_route")
	id?:          string
	pattern!:     string
	script_name?: string
	zone_id!:     string
}
