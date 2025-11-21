package data

#cloudflare_api_shield: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_api_shield")
	close({
		// Identifier.
		id?: string
		auth_id_characteristics?: matchN(1, [close({
			// The name of the characteristic field, i.e., the header or
			// cookie name.
			name?: string

			// The type of characteristic.
			// Available values: "header", "cookie", "jwt".
			type?: string
		}), [...close({
			// The name of the characteristic field, i.e., the header or
			// cookie name.
			name?: string

			// The type of characteristic.
			// Available values: "header", "cookie", "jwt".
			type?: string
		})]])

		// Ensures that the configuration is written or retrieved in
		// normalized fashion
		normalize?: bool

		// Identifier.
		zone_id!: string
	})
}
