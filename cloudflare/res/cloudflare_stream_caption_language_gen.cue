package res

#cloudflare_stream_caption_language: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_stream_caption_language")
	close({
		// Identifier.
		account_id!: string

		// The WebVTT file containing the caption or subtitle content.
		file?: string

		// Whether the caption was generated via AI.
		generated?: bool

		// A Cloudflare-generated unique identifier for a media item.
		identifier!: string

		// The language label displayed in the native language to users.
		label?: string

		// The language tag in BCP 47 format.
		language!: string

		// The status of a generated caption.
		// Available values: "ready", "inprogress", "error".
		status?: string
	})
}
