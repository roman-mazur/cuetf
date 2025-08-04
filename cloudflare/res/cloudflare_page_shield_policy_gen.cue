package res

#cloudflare_page_shield_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_page_shield_policy")
	close({
		action!:      string
		description!: string
		enabled!:     bool
		expression!:  string
		id?:          string
		value!:       string
		zone_id!:     string
	})
}
