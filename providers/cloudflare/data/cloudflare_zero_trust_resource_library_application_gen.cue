package data

cloudflare_zero_trust_resource_library_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_resource_library_application")
	close({
		account_id!: string

		// Confidence score for the application. Returns -1 when no score is available.
		application_confidence_score?: number

		// Returns the score composition breakdown for the application.
		application_score_composition?: string

		// Returns the application source.
		application_source?: string

		// Returns the application type.
		application_type?: string

		// Returns the application type description.
		application_type_description?: string

		// Numeric identifier for an application category.
		category_id?: number

		// Returns the application creation time.
		created_at?: string
		filter?: close({
			// Return only the listed properties on each application, as a comma-separated list.
			// Use this to keep responses small when you only need part of each application, for
			// example populating a picker with `fields=id,name` instead of downloading every
			// hostname and IP subnet.
			//
			// Omit this parameter to receive the full application object, including
			// when lookup is used.
			//
			// `id` is always returned.
			//
			// Selectable properties: `id`, `name`, `human_id`, `version`, `hostnames`,
			// `support_domains`, `ip_subnets`, `port_protocols`, `supported`, `gen_ai_score`,
			// `application_confidence_score`, `created_at`, `updated_at`, `review_status`.
			//
			// Unknown or empty property names return `400`.
			fields?: string

			// Filter applications using `key:value` format. Supported filter keys:
			// - `name`: application name (for example, `name:HR`).
			// - `id`: application ID (for example, `id:498`).
			// - `human_id`: human-readable ID (for example, `human_id:HR`).
			// - `hostname`: hostname or support domain (for example, `hostname:portal.example.com`).
			// - `source`: application source name (for example, `source:cloudflare`).
			// - `ip_subnet`: CIDR containment; returns applications where a stored subnet
			// contains the search value (for example, `ip_subnet:10.0.1.5/32` matches
			// `10.0.0.0/16`).
			// - `category_id`: category ID (for example, `category_id:12`).
			// - `category_name`: category name (for example, `category_name:HR`).
			// - `supported`: supported Cloudflare product. Values: `GATEWAY`, `ACCESS`, `CASB`.
			// - `review_status`: account-specific Gateway review status. Values:
			// `approved`, `unapproved`, `in_review`, `unreviewed`.
			filter?: string

			// Number of results to return. Defaults to 25; values are clamped to 1–250.
			limit?: number

			// Find complete, case-insensitive application name mentions in a phrase or
			// rule sentence. Misspelled names do not match. Returns matching applications
			// ranked by relevance. Must be between 2 and 1000 characters. Uses the same
			// filters, fields, and pagination as listing. `search` cannot be combined
			// with lookup. Results are ranked by relevance, so `order_by` is ignored.
			lookup?: string

			// Number of results to skip. Defaults to 0; negative values are clamped to 0.
			offset?: number

			// Order results using field:direction format. Supported fields are name, id, human_id,
			// category_id, application_type, application_confidence_score, and gen_ai_score.
			// Supported directions are asc and desc. Ignored when search is provided; results are
			// ranked by relevance instead. Also ignored when lookup is provided.
			order_by?: string

			// Fuzzy search across application name and hostnames. Results are ranked by
			// relevance. Must be between 2 and 200 characters. Can be combined with filter
			// parameters.
			search?: string
		})

		// GenAI score for the application. Returns -1 when no score is available.
		gen_ai_score?: number

		// Hostnames matched by the application.
		hostnames?: [...string]

		// Human-readable identifier for the application.
		human_id?: string

		// Numeric identifier for the application.
		id?: number

		// IP subnets for this application. Custom application create and update
		// requests accept IPv4 prefix lengths /8 through /32 and IPv6 prefix lengths
		// /32 through /128.
		ip_subnets?: [...string]

		// Application name.
		name?: string

		// Ports matched by the application, in `protocol/port` or inclusive
		// `protocol/start-end` format (for example, `tcp/443` or `udp/10000-20000`).
		// TCP and UDP ports must be between 0 and 65535.
		port_protocols?: [...string]

		// Support domains matched by the application.
		support_domains?: [...string]

		// Cloudflare products that support this application.
		supported?: [...string]

		// Returns the application update time.
		updated_at?: string

		// Returns the application version.
		version?: string
	})
}
