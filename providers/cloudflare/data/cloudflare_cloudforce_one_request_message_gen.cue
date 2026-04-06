package data

#cloudflare_cloudforce_one_request_message: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_cloudforce_one_request_message")
	close({
		// Identifier.
		account_id!: string

		// Retrieve mes ges created after this time.
		after?: string

		// Author of message.
		author?: string

		// Retrieve messages created before this time.
		before?: string

		// Content of message.
		content?: string

		// Defines the message creation time.
		created?: string

		// UUID.
		id?: string

		// Whether the message is a follow-on request.
		is_follow_on_request?: bool

		// Page number of results.
		page!: number

		// Number of results per page.
		per_page!: number

		// UUID.
		request_id!: string

		// Field to sort results by.
		sort_by?: string

		// Sort order (asc or desc).
		// Available values: "asc", "desc".
		sort_order?: string

		// Defines the message last updated time.
		updated?: string
	})
}
