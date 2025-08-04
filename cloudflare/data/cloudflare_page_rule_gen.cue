package data

#cloudflare_page_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_page_rule")
	close({
		created_on?:  string
		id?:          string
		modified_on?: string
		pagerule_id!: string
		priority?:    number
		status?:      string
		zone_id!:     string
	})
}
