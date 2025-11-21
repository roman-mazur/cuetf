package data

#cloudflare_token_validation_configs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_token_validation_configs")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?:  string
			description?: string

			// UUID.
			id?:           string
			last_updated?: string
			title?:        string
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

			// Available values: "JWT".
			token_type?: string
			token_sources?: [...string]
		}), [...close({
			created_at?:  string
			description?: string

			// UUID.
			id?:           string
			last_updated?: string
			title?:        string
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

			// Available values: "JWT".
			token_type?: string
			token_sources?: [...string]
		})]])

		// Identifier.
		zone_id!: string
	})
}
