package data

#cloudflare_api_shield_schema: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_api_shield_schema")
	close({
		created_at?:         string
		kind?:               string
		name?:               string
		omit_source?:        bool
		schema_id!:          string
		source?:             string
		validation_enabled?: bool
		zone_id!:            string
	})
}
