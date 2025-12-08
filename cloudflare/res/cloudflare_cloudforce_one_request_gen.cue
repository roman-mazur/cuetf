package res

#cloudflare_cloudforce_one_request: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_cloudforce_one_request")
	close({
		// Identifier.
		account_id!: string
		completed?:  string

		// Request content.
		content?: string

		// UUID.
		id?:      string
		created?: string

		// Tokens for the request messages.
		message_tokens?: number

		// Priority for analyzing the request.
		priority?: string

		// Readable Request ID.
		readable_id?: string

		// Requested information from request.
		request?: string

		// Requested information from request.
		request_type?: string

		// Request Status.
		// Available values: "open", "accepted", "reported", "approved",
		// "completed", "declined".
		status?: string

		// Brief description of the request.
		summary?: string

		// The CISA defined Traffic Light Protocol (TLP).
		// Available values: "clear", "amber", "amber-strict", "green",
		// "red".
		tlp?: string

		// Tokens for the request.
		tokens?:  number
		updated?: string
	})
}
