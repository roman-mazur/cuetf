package data

#cloudflare_schema_validation_schemas_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_schema_validation_schemas_list")
	close({
		max_items?:   number
		omit_source?: bool
		result?: matchN(1, [close({
			created_at?:         string
			kind?:               string
			name?:               string
			schema_id?:          string
			source?:             string
			validation_enabled?: bool
		}), [...close({
			created_at?:         string
			kind?:               string
			name?:               string
			schema_id?:          string
			source?:             string
			validation_enabled?: bool
		})]])
		validation_enabled?: bool
		zone_id!:            string
	})
}
