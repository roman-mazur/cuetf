package data

#cloudflare_cloudforce_one_requests: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_cloudforce_one_requests")
	close({
		// Identifier.
		account_id!: string

		// Retrieve requests completed after this time.
		completed_after?: string

		// Retrieve requests completed before this time.
		completed_before?: string

		// Retrieve requests created after this time.
		created_after?: string

		// Retrieve requests created before this time.
		created_before?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// Request completion time.
			completed?: string

			// Request creation time.
			created?: string

			// UUID.
			id?: string

			// Tokens for the request messages.
			message_tokens?: number

			// Available values: "routine", "high", "urgent".
			priority?: string

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
			tokens?: number

			// Request last updated time.
			updated?: string
		}), [...close({
			// Request completion time.
			completed?: string

			// Request creation time.
			created?: string

			// UUID.
			id?: string

			// Tokens for the request messages.
			message_tokens?: number

			// Available values: "routine", "high", "urgent".
			priority?: string

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
			tokens?: number

			// Request last updated time.
			updated?: string
		})]])

		// Max items to fetch, default: 1000
		max_items?: number

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
}
