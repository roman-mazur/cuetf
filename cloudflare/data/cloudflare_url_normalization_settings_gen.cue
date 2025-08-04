package data

#cloudflare_url_normalization_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_url_normalization_settings")
	close({
		scope?:   string
		type?:    string
		zone_id!: string
	})
}
