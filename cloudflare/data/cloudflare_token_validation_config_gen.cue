package data

#cloudflare_token_validation_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_token_validation_config")
	close({
		// UUID.
		config_id!:  string
		created_at?: string

		// UUID.
		id?: string
		credentials?: close({
			keys?: matchN(1, [close({
				// Algorithm
				// Available values: "RS256", "RS384", "RS512", "PS256", "PS384",
				// "PS512", "ES256", "ES384".
				alg?: string

				// Curve
				// Available values: "P-256", "P-384".
				crv?: string

				// RSA exponent
				e?: string

				// Key ID
				kid?: string

				// Key Type
				// Available values: "RSA", "EC".
				kty?: string

				// RSA modulus
				n?: string

				// X EC coordinate
				x?: string

				// Y EC coordinate
				y?: string
			}), [...close({
				// Algorithm
				// Available values: "RS256", "RS384", "RS512", "PS256", "PS384",
				// "PS512", "ES256", "ES384".
				alg?: string

				// Curve
				// Available values: "P-256", "P-384".
				crv?: string

				// RSA exponent
				e?: string

				// Key ID
				kid?: string

				// Key Type
				// Available values: "RSA", "EC".
				kty?: string

				// RSA modulus
				n?: string

				// X EC coordinate
				x?: string

				// Y EC coordinate
				y?: string
			})]])
		})
		description?: string

		// Available values: "JWT".
		token_type?:   string
		last_updated?: string
		title?:        string
		token_sources?: [...string]

		// Identifier.
		zone_id!: string
	})
}
