package res

#cloudflare_schema_validation_operation_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_schema_validation_operation_settings")
	close({
		mitigation_action!: string
		operation_id!:      string
		zone_id!:           string
	})
}
