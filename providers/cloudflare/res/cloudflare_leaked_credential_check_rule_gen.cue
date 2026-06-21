package res

#cloudflare_leaked_credential_check_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_leaked_credential_check_rule")
	close({
		// Defines the unique ID for this custom detection.
		id?: string

		// Defines ehe ruleset expression to use in matching the password
		// in a request.
		password?: string

		// Defines the ruleset expression to use in matching the username
		// in a request.
		username?: string

		// Defines an identifier.
		zone_id!: string
	})
}
