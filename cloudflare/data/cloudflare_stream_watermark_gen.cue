package data

#cloudflare_stream_watermark: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_stream_watermark")
	close({
		account_id!:      string
		created?:         string
		downloaded_from?: string
		height?:          number
		identifier!:      string
		name?:            string
		opacity?:         number
		padding?:         number
		position?:        string
		scale?:           number
		size?:            number
		uid?:             string
		width?:           number
	})
}
