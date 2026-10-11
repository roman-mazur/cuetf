package data

cloudflare_zero_trust_casb_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_casb_integration")
	close({
		account_id!: string
		application?: [string]: string

		// The integration's authentication method.
		auth_method?: [string]: string

		// Authorization link for the integration.
		authorization_link?: close({
			components?: [string]: string
			link?: string
		})

		// When the integration was created.
		created?: string

		// Credentials expiry time.
		credentials_expiry?: string

		// DLP Profiles enabled for the integration.
		dlp_profiles?: [...string]
		filter?: close({
			// Filter by application/vendor (e.g., GOOGLE_WORKSPACE, MICROSOFT_INTERNAL).
			application?: string

			// Direction to order results.
			// Available values: "asc", "desc".
			direction?: string

			// Filter by DLP enabled status (true/false).
			dlp_enabled?: bool

			// Field to order results by.
			// Available values: "application", "created", "name", "status".
			order?: string

			// Page number within the paginated result set.
			page?: number

			// Number of results per page.
			page_size?: number

			// Search integrations by name or application.
			search?: string

			// Filter by integration status.
			// Available values: "Healthy", "Initializing", "Offline", "Unhealthy".
			status?: string

			// Filter by one enabled use case (for example, casb or ces).
			use_cases?: string
		})

		// Health details with remediation hints.
		health_details?: [...{
			[string]: string
		}]

		// Integration ID to look up. Exactly one of `id` or `filter` must be configured.
		id?: string

		// Whether the user paused the integration.
		is_paused?: bool

		// Last time the integration was hydrated.
		last_hydrated?: string

		// Name of the integration.
		name?: string

		// Integration status.
		status?: string

		// When the integration was last updated.
		updated?: string

		// Use cases enabled for the integration.
		use_cases?: [...{
			[string]: string
		}]
	})
}
