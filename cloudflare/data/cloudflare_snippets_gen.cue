package data

#cloudflare_snippets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_snippets")
	close({
		// The timestamp of when the snippet was created.
		created_on?: string

		// The timestamp of when the snippet was last modified.
		modified_on?: string

		// The identifying name of the snippet.
		snippet_name!: string

		// The unique ID of the zone.
		zone_id!: string
	})
}
