package res

#cloudflare_leaked_credential_check_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_leaked_credential_check_rule")
	close({
		id?:       string
		password?: string
		username?: string
		zone_id!:  string
	})
}
