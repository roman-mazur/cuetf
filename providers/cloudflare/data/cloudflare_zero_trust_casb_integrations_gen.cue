package data

cloudflare_zero_trust_casb_integrations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_casb_integrations")
	close({
		account_id!: string

		// Filter by application/vendor (e.g., GOOGLE_WORKSPACE, MICROSOFT_INTERNAL).
		application?: string

		// Direction to order results.
		// Available values: "asc", "desc".
		direction?: string

		// Filter by DLP enabled status (true/false).
		dlp_enabled?: bool

		// Max items to fetch, default: 1000
		max_items?: number

		// Field to order results by.
		// Available values: "application", "created", "name", "status".
		order?: string

		// Page number within the paginated result set.
		page?: number

		// Number of results per page.
		page_size?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			application?: [string]: string

			// When the integration was created.
			created?: string

			// Integration ID.
			id?: string

			// Whether the user paused the integration.
			is_paused?: bool

			// Name of the integration.
			name?: string

			// Integration status.
			status?: string

			// When the integration was last updated.
			updated?: string
		}), [...close({
			application?: [string]: string

			// When the integration was created.
			created?: string

			// Integration ID.
			id?: string

			// Whether the user paused the integration.
			is_paused?: bool

			// Name of the integration.
			name?: string

			// Integration status.
			status?: string

			// When the integration was last updated.
			updated?: string
		})]])

		// Search integrations by name or application.
		search?: string

		// Filter by integration status.
		// Available values: "Healthy", "Initializing", "Offline", "Unhealthy".
		status?: string

		// Filter by one enabled use case (for example, casb or ces).
		use_cases?: string
	})
}
