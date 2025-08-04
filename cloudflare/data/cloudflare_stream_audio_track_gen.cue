package data

#cloudflare_stream_audio_track: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_stream_audio_track")
	close({
		account_id!: string
		default?:    bool
		identifier!: string
		label?:      string
		status?:     string
		uid?:        string
	})
}
