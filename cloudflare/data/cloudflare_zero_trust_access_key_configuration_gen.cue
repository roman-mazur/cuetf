package data

#cloudflare_zero_trust_access_key_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_key_configuration")
	close({
		account_id!:                 string
		days_until_next_rotation?:   number
		key_rotation_interval_days?: number
		last_key_rotation_at?:       string
	})
}
