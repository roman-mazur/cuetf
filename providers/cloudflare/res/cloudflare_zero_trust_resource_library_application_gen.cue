package res

cloudflare_zero_trust_resource_library_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_resource_library_application")
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
