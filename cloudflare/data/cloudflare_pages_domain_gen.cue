package data

#cloudflare_pages_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_pages_domain")
	close({
		// Identifier.
		account_id!: string

		// Available values: "google", "lets_encrypt".
		certificate_authority?: string
		validation_data?: close({
			error_message?: string

			// Available values: "http", "txt".
			method?: string

			// Available values: "initializing", "pending", "active",
			// "deactivated", "error".
			status?:    string
			txt_name?:  string
			txt_value?: string
		})
		verification_data?: close({
			error_message?: string

			// Available values: "pending", "active", "deactivated",
			// "blocked", "error".
			status?: string
		})
		created_on?: string

		// The domain name.
		domain_name!: string
		domain_id?:   string

		// The domain name.
		id?: string

		// The domain name.
		name?: string

		// Name of the project.
		project_name!: string

		// Available values: "initializing", "pending", "active",
		// "deactivated", "blocked", "error".
		status?:   string
		zone_tag?: string
	})
}
