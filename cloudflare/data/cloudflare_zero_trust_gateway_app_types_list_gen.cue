package data

#cloudflare_zero_trust_gateway_app_types_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_app_types_list")
	close({
		// Provide the identifier string.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Identify the type of this application. Multiple applications
			// can share the same type. Refers to the `id` of a returned
			// application type.
			application_type_id?: number

			// Provide a short summary of applications with this type.
			description?: string
			created_at?:  string

			// Identify this application. Only one application per ID.
			id?: number

			// Specify the name of the application or application type.
			name?: string
		}), [...close({
			// Identify the type of this application. Multiple applications
			// can share the same type. Refers to the `id` of a returned
			// application type.
			application_type_id?: number

			// Provide a short summary of applications with this type.
			description?: string
			created_at?:  string

			// Identify this application. Only one application per ID.
			id?: number

			// Specify the name of the application or application type.
			name?: string
		})]])
	})
}
