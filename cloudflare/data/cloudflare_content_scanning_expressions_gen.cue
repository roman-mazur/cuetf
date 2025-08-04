package data

#cloudflare_content_scanning_expressions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_content_scanning_expressions")
	close({
		max_items?: number
		result?: matchN(1, [close({
			id?:      string
			payload?: string
		}), [...close({
			id?:      string
			payload?: string
		})]])
		zone_id!: string
	})
}
