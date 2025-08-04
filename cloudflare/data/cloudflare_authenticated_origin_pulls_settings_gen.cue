package data

#cloudflare_authenticated_origin_pulls_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_authenticated_origin_pulls_settings")
	close({
		enabled?: bool
		zone_id!: string
	})
}
