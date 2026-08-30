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

		// Returns the category ID.
		category_id?: number

		// Returns the application creation time.
		created_at?: string

		// GenAI score for the application. Returns -1 when no score is available.
		gen_ai_score?: number

		// Hostnames matched by the application.
		hostnames?: [...string]

		// Returns the human readable ID.
		human_id?: string
		id!:       number

		// IP subnets matched by the application.
		ip_subnets?: [...string]

		// Returns the application name.
		name?: string

		// Port and protocol pairs matched by the application.
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
