package res

#cloudflare_leaked_credential_check: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_leaked_credential_check")
	close({
		// Determines whether or not Leaked Credential Checks are enabled.
		enabled?: bool

		// Defines an identifier.
		zone_id!: string
	})
}
