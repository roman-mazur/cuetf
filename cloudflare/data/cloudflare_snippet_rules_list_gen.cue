package data

#cloudflare_snippet_rules_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_snippet_rules_list")
	close({
		max_items?: number
		result?: matchN(1, [close({
			description?:  string
			enabled?:      bool
			expression?:   string
			id?:           string
			last_updated?: string
			snippet_name?: string
		}), [...close({
			description?:  string
			enabled?:      bool
			expression?:   string
			id?:           string
			last_updated?: string
			snippet_name?: string
		})]])
		zone_id!: string
	})
}
