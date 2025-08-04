package data

#cloudflare_regional_hostnames: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_regional_hostnames")
	close({
		max_items?: number
		result?: matchN(1, [close({
			created_on?: string
			hostname?:   string
			region_key?: string
			routing?:    string
		}), [...close({
			created_on?: string
			hostname?:   string
			region_key?: string
			routing?:    string
		})]])
		zone_id!: string
	})
}
