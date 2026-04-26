package data

#cloudflare_snippet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_snippet")
	close({
		// Indicates when the snippet was created.
		created_on?: string

		// Indicates when the snippet was last modified.
		modified_on?: string

		// Identify the snippet.
		snippet_name!: string

		// Use this field to specify the unique ID of the zone.
		zone_id?: string
	})
}
