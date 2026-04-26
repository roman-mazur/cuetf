package res

#cloudflare_stream_download: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_stream_download")
	close({
		// Identifier.
		account_id?: string

		// A Cloudflare-generated unique identifier for a media item.
		identifier!: string

		// The audio-only download. Only present if this download type has
		// been created.
		audio?: close({
			// Indicates the progress as a percentage between 0 and 100.
			percent_complete?: number

			// The status of a generated download.
			// Available values: "ready", "inprogress", "error".
			status?: string

			// The URL to access the generated download.
			url?: string
		})

		// The default video download. Only present if this download type
		// has been created.
		default?: close({
			// Indicates the progress as a percentage between 0 and 100.
			percent_complete?: number

			// The status of a generated download.
			// Available values: "ready", "inprogress", "error".
			status?: string

			// The URL to access the generated download.
			url?: string
		})
	})
}
