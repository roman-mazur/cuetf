package res

#cloudflare_stream_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_stream_webhook")
	close({
		// The account identifier tag.
		account_id!: string

		// The URL where webhooks will be sent.
		notification_url!: string
	})
}
