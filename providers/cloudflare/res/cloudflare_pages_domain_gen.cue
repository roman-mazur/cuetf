package res

cloudflare_pages_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_pages_domain")
	close({
		// Identifier.
		account_id!: string

		// Available values: "google", "lets_encrypt".
		certificate_authority?: string
		created_on?:            string
		domain_id?:             string

		// Fully qualified domain name for the Pages project, such as `example.com`.
		id?: string

		// Fully qualified domain name for the Pages project, such as `example.com`.
		name!: string

		// Name of the Pages project. Must begin with a lowercase letter or digit and
		// contain only lowercase letters, digits, and hyphens.
		project_name!: string

		// Available values: "initializing", "pending", "active", "deactivated", "blocked", "error".
		status?: string
		validation_data?: close({
			error_message?: string

			// Available values: "http", "txt".
			method?: string

			// Available values: "initializing", "pending", "active", "deactivated", "error".
			status?:    string
			txt_name?:  string
			txt_value?: string
		})
		verification_data?: close({
			error_message?: string

			// Available values: "pending", "active", "deactivated", "blocked", "error".
			status?: string
		})
		zone_tag?: string
	})
}
