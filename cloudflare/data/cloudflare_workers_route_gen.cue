package data

#cloudflare_workers_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_route")
	close({
		id?:       string
		pattern?:  string
		route_id?: string
		script?:   string
		zone_id!:  string
	})
}
