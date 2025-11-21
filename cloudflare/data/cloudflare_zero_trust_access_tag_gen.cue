package data

#cloudflare_zero_trust_access_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_tag")
	close({
		// Identifier.
		account_id!: string

		// The name of the tag
		id?: string

		// The name of the tag
		name?: string

		// The name of the tag
		tag_name!: string
	})
}
