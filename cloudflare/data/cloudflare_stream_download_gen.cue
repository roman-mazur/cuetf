package data

#cloudflare_stream_download: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_stream_download")
	close({
		account_id!: string
		identifier!: string
	})
}
