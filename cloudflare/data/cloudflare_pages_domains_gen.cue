package data

#cloudflare_pages_domains: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_pages_domains")
	close({
		// Identifier.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Available values: "google", "lets_encrypt".
			certificate_authority?: string
			created_on?:            string
			domain_id?:             string
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

			// The domain name.
			name?: string
			id?:   string

			// Available values: "initializing", "pending", "active",
			// "deactivated", "blocked", "error".
			status?:   string
			zone_tag?: string
		}), [...close({
			// Available values: "google", "lets_encrypt".
			certificate_authority?: string
			created_on?:            string
			domain_id?:             string
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

			// The domain name.
			name?: string
			id?:   string

			// Available values: "initializing", "pending", "active",
			// "deactivated", "blocked", "error".
			status?:   string
			zone_tag?: string
		})]])

		// Name of the project.
		project_name!: string
	})
}
