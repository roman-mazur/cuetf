package res

#cloudflare_stream_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_stream_webhook")
	close({
		// The account identifier tag.
		account_id?: string

		// The date and time the webhook was last modified.
		modified?: string

		// The URL where webhooks will be sent.
		notification_url?: string

		// The secret used to verify webhook signatures.
		secret?: string
	})
}
