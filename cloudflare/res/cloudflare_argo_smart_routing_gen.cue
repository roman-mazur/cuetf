package res

#cloudflare_argo_smart_routing: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_argo_smart_routing")
	close({
		id?:      string
		value!:   string
		zone_id!: string
	})
}
