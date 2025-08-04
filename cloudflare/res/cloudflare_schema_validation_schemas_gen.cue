package res

#cloudflare_schema_validation_schemas: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_schema_validation_schemas")
	close({
		created_at?:         string
		id?:                 string
		kind!:               string
		name!:               string
		schema_id?:          string
		source!:             string
		validation_enabled!: bool
		zone_id!:            string
	})
}
