package res

#cloudflare_leaked_credential_check: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_leaked_credential_check")
	close({
		enabled?: bool
		zone_id!: string
	})
}
