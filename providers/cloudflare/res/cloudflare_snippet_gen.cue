package res

#cloudflare_snippet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_snippet")
	close({
		// Indicates when the snippet was created.
		created_on?: string

		// The list of files belonging to the snippet.
		files!: [...close({
			content?: string
			name?:    string
		})]

		// Indicates when the snippet was last modified.
		modified_on?: string

		// Identify the snippet.
		snippet_name!: string

		// Use this field to specify the unique ID of the zone.
		zone_id!: string

		// Provide metadata about the snippet.
		metadata!: close({
			// Specify the name of the file that contains the main module of
			// the snippet.
			main_module!: string
		})
	})
}
