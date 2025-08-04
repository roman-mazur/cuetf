package res

#cloudflare_cloudforce_one_request_message: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_cloudforce_one_request_message")
	close({
		// Identifier.
		account_id!: string

		// Author of message.
		author?: string

		// Content of message.
		content?: string

		// Defines the message creation time.
		created?: string

		// Message ID.
		id?: number

		// Whether the message is a follow-on request.
		is_follow_on_request?: bool

		// UUID.
		request_id!: string

		// Defines the message last updated time.
		updated?: string
	})
}
