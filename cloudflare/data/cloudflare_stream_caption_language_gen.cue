package data

#cloudflare_stream_caption_language: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_stream_caption_language")
	close({
		account_id!: string
		generated?:  bool
		identifier!: string
		label?:      string
		language!:   string
		status?:     string
	})
}
