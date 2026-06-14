package data

#cloudflare_ai_search_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_ai_search_namespace")
	close({
		account_id!: string
		created_at?: string

		// Optional description for the namespace. Max 256 characters.
		description?: string
		name!:        string
	})
}
