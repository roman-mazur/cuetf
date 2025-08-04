package res

#cloudflare_magic_wan_static_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_wan_static_route")
	close({
		account_id!: string
		created_on?: string
		scope?: close({
			colo_names?: [...string]
			colo_regions?: [...string]
		})
		description?: string
		id?:          string
		modified_on?: string
		nexthop!:     string
		prefix!:      string
		priority!:    number
		weight?:      number
	})
}
