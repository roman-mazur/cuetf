package res

#cloudflare_zero_trust_key_access_key_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_zero_trust_key_access_key_configuration")
	account_id!:                 string
	id?:                         string
	key_rotation_interval_days?: number
}
