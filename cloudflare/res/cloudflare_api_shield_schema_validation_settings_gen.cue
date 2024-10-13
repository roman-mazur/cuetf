package res

#cloudflare_api_shield_schema_validation_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_api_shield_schema_validation_settings")
	id?:                                    string
	validation_default_mitigation_action!:  string
	validation_override_mitigation_action?: string
	zone_id!:                               string
}
