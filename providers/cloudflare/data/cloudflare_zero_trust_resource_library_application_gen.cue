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

		// Returns the application creation time.
		created_at?: string

		// GenAI score for the application. Returns -1 when no score is available.
		gen_ai_score?: number

		// Returns the list of hostnames for the application.
		hostnames?: [...string]

		// Returns the human readable ID.
		human_id?: string
		id!:       string

		// Returns the Intel API ID for the application.
		intel_id?: number

		// Returns the list of IP subnets for the application.
		ip_subnets?: [...string]

		// Returns the application name.
		name?: string

		// Returns the list of port protocols for the application.
		port_protocols?: [...string]

		// Returns the list of support domains for the application.
		support_domains?: [...string]

		// Cloudflare products that support this application.
		supported?: [...string]

		// Returns the application update time.
		updated_at?: string

		// Returns the application version.
		version?: string
	})
}
