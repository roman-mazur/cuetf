package data

#cloudflare_zero_trust_gateway_app_types_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_app_types_list")
	close({
		// Identifier.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// The identifier for the type of this application. There can be
			// many applications with the same type. This refers to the `id`
			// of a returned application type.
			application_type_id?: number

			// A short summary of applications with this type.
			description?: string
			created_at?:  string

			// The identifier for this application. There is only one
			// application per ID.
			id?: number

			// The name of the application or application type.
			name?: string
		}), [...close({
			// The identifier for the type of this application. There can be
			// many applications with the same type. This refers to the `id`
			// of a returned application type.
			application_type_id?: number

			// A short summary of applications with this type.
			description?: string
			created_at?:  string

			// The identifier for this application. There is only one
			// application per ID.
			id?: number

			// The name of the application or application type.
			name?: string
		})]])
	})
}
