package res

#cloudflare_access_keys_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_access_keys_configuration")
	account_id!:                 string
	id?:                         string
	key_rotation_interval_days?: number
}
