package res

#cloudflare_content_scanning_expression: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_content_scanning_expression")
	close({
		body!: matchN(1, [close({
			payload!: string
		}), [...close({
			payload!: string
		})]])
		id?:      string
		zone_id!: string
	})
}
