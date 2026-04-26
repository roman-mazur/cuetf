package data

#cloudflare_cloudforce_one_request_priority: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_cloudforce_one_request_priority")
	close({
		// Identifier.
		account_id?: string
		completed?:  string

		// Request content.
		content?: string
		created?: string

		// UUID.
		id?: string

		// Tokens for the request messages.
		message_tokens?: number
		priority?:       string

		// UUID.
		priority_id!: string

		// Readable Request ID.
		readable_id?: string

		// Requested information from request.
		request?: string

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
