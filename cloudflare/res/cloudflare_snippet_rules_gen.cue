package res

#cloudflare_snippet_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_snippet_rules")
	close({
		description?: string
		enabled?:     bool
		expression?:  string
		rules!: matchN(1, [close({
			description?:  string
			enabled?:      bool
			expression!:   string
			id?:           string
			last_updated?: string
			snippet_name!: string
		}), [...close({
			description?:  string
			enabled?:      bool
			expression!:   string
			id?:           string
			last_updated?: string
			snippet_name!: string
		})]])
		id?:           string
		last_updated?: string
		snippet_name?: string
		zone_id!:      string
	})
}
