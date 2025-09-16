package data

#cloudflare_cloudforce_one_request: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_cloudforce_one_request")
	close({
		// Identifier.
		account_id!: string
		completed?:  string

		// Request content.
		content?: string
		created?: string

		// UUID.
		id?: string

		// Tokens for the request messages.
		message_tokens?: number

		// Readable Request ID.
		readable_id?: string
		priority?:    string

		// Requested information from request.
		request?: string
		filter?: close({
			// Retrieve requests completed after this time.
			completed_after?: string

			// Retrieve requests completed before this time.
			completed_before?: string

			// Retrieve requests created after this time.
			created_after?: string

			// Retrieve requests created before this time.
			created_before?: string

			// Page number of results.
			page!: number

			// Number of results per page.
			per_page!: number

			// Requested information from request.
			request_type?: string

			// Field to sort results by.
			sort_by?: string

			// Sort order (asc or desc).
			// Available values: "asc", "desc".
			sort_order?: string

			// Request Status.
			// Available values: "open", "accepted", "reported", "approved",
			// "completed", "declined".
			status?: string
		})

		// UUID.
		request_id?: string

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
