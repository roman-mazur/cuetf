package data

cloudflare_token_validation_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_token_validation_config")
	close({
		// UUID.
		config_id!:  string
		created_at?: string
		credentials?: close({
			keys?: matchN(1, [close({
				// Algorithm
				// Available values: "RS256", "RS384", "RS512", "PS256", "PS384", "PS512",
				// "ES256", "ES384", "HS256", "HS384", "HS512".
				alg?: string

				// For `alg: ES256` or `alg: ES384`: Curve
				// Available values: "P-256", "P-384".
				crv?: string

				// For `alg: RS256` or `alg: RS384` or `alg: RS512` or `alg: PS256` or `alg:
				// PS384` or `alg: PS512`: RSA exponent
				e?: string

				// Key ID
				kid?: string

				// Key Type
				// Available values: "RSA", "EC", "oct".
				kty?: string

				// For `alg: RS256` or `alg: RS384` or `alg: RS512` or `alg: PS256` or `alg:
				// PS384` or `alg: PS512`: RSA modulus
				n?: string

				// For `alg: ES256` or `alg: ES384`: X EC coordinate
				x?: string

				// For `alg: ES256` or `alg: ES384`: Y EC coordinate
				y?: string
			}), [...close({
				// Algorithm
				// Available values: "RS256", "RS384", "RS512", "PS256", "PS384", "PS512",
				// "ES256", "ES384", "HS256", "HS384", "HS512".
				alg?: string

				// For `alg: ES256` or `alg: ES384`: Curve
				// Available values: "P-256", "P-384".
				crv?: string

				// For `alg: RS256` or `alg: RS384` or `alg: RS512` or `alg: PS256` or `alg:
				// PS384` or `alg: PS512`: RSA exponent
				e?: string

				// Key ID
				kid?: string

				// Key Type
				// Available values: "RSA", "EC", "oct".
				kty?: string

				// For `alg: RS256` or `alg: RS384` or `alg: RS512` or `alg: PS256` or `alg:
				// PS384` or `alg: PS512`: RSA modulus
				n?: string

				// For `alg: ES256` or `alg: ES384`: X EC coordinate
				x?: string

				// For `alg: ES256` or `alg: ES384`: Y EC coordinate
				y?: string
			})]])
		})
		description?: string

		// UUID.
		id?:           string
		last_updated?: string
		title?:        string
		token_sources?: [...string]

		// Available values: "JWT".
		token_type?: string

		// Identifier.
		zone_id?: string
	})
}
