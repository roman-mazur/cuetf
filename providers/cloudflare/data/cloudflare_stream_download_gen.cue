package data

#cloudflare_stream_download: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_stream_download")
	close({
		// Identifier.
		account_id!: string

		// A Cloudflare-generated unique identifier for a media item.
		identifier!: string
	})
}
