package res

#cloudflare_api_shield_operation_schema_validation_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_api_shield_operation_schema_validation_settings")
	id?:                string
	mitigation_action?: string
	operation_id!:      string
	zone_id!:           string
}
