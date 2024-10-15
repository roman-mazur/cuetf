package res

#cloudflare_magic_wan_static_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_wan_static_route")
	account_id?: string
	colo_names?: [...string]
	colo_regions?: [...string]
	description?: string
	id?:          string
	nexthop!:     string
	prefix!:      string
	priority!:    number
	weight?:      number
}
