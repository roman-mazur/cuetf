package data

#cloudflare_stream_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_stream_webhook")
	close({
		// The account identifier tag.
		account_id!: string
	})
}
