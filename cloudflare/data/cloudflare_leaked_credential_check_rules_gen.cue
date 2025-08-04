package data

#cloudflare_leaked_credential_check_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_leaked_credential_check_rules")
	close({
		max_items?: number
		result?: matchN(1, [close({
			id?:       string
			password?: string
			username?: string
		}), [...close({
			id?:       string
			password?: string
			username?: string
		})]])
		zone_id!: string
	})
}
