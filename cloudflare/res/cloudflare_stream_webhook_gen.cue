package res

#cloudflare_stream_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_stream_webhook")
	close({
		account_id!:       string
		notification_url!: string
	})
}
