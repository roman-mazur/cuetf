package data

#cloudflare_workers_routes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_routes")
	close({
		max_items?: number
		result?: matchN(1, [close({
			id?:      string
			pattern?: string
			script?:  string
		}), [...close({
			id?:      string
			pattern?: string
			script?:  string
		})]])
		zone_id!: string
	})
}
