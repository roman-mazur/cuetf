package res

#cloudflare_url_normalization_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_url_normalization_settings")
	id?:     string
	scope:   string
	type:    string
	zone_id: string
}
