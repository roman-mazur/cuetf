package data

#cloudflare_schema_validation_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_schema_validation_settings")
	close({
		validation_default_mitigation_action?:  string
		validation_override_mitigation_action?: string
		zone_id!:                               string
	})
}
