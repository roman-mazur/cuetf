package res

#cloudflare_static_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_static_route")
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
