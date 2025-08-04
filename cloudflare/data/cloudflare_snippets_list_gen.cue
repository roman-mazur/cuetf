package data

#cloudflare_snippets_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_snippets_list")
	close({
		max_items?: number
		result?: matchN(1, [close({
			created_on?:   string
			modified_on?:  string
			snippet_name?: string
		}), [...close({
			created_on?:   string
			modified_on?:  string
			snippet_name?: string
		})]])
		zone_id!: string
	})
}
