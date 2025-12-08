package res

#cloudflare_snippet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_snippet")
	close({
		// The timestamp of when the snippet was created.
		created_on?: string

		// Metadata about the snippet.
		metadata!: close({
			// Name of the file that contains the main module of the snippet.
			main_module!: string
		})

		// The list of files belonging to the snippet.
		files!: [...close({
			content?: string
			name?:    string
		})]

		// The timestamp of when the snippet was last modified.
		modified_on?: string

		// The identifying name of the snippet.
		snippet_name!: string

		// The unique ID of the zone.
		zone_id!: string
	})
}
