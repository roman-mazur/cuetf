package res

cloudflare_token_validation_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_token_validation_config")
	close({
		created_at?: string

		// Request payload for create and PUT credentials operations. Provided keys
		// define the complete stored key set. Key identities (`{alg,kid}`) must be
		// unique.
		credentials!: close({
			keys!: matchN(1, [close({
				// Algorithm
				// Available values: "RS256", "RS384", "RS512", "PS256", "PS384", "PS512",
				// "ES256", "ES384", "HS256", "HS384", "HS512".
				alg!: string

				// Curve
				// Available values: "P-256", "P-384".
				crv?: string

				// RSA exponent
				e?: string

				// Symmetric key material. Required for create and PUT update requests.
				k?: string

				// Key ID
				kid!: string

				// Key Type
				// Available values: "RSA", "EC", "oct".
				kty!: string

				// RSA modulus
				n?: string

				// X EC coordinate
				x?: string

				// Y EC coordinate
				y?: string
			}), [...close({
				// Algorithm
				// Available values: "RS256", "RS384", "RS512", "PS256", "PS384", "PS512",
				// "ES256", "ES384", "HS256", "HS384", "HS512".
				alg!: string

				// Curve
				// Available values: "P-256", "P-384".
				crv?: string

				// RSA exponent
				e?: string

				// Symmetric key material. Required for create and PUT update requests.
				k?: string

				// Key ID
				kid!: string

				// Key Type
				// Available values: "RSA", "EC", "oct".
				kty!: string

				// RSA modulus
				n?: string

				// X EC coordinate
				x?: string

				// Y EC coordinate
				y?: string
			})]])
		})
		description!: string

		// UUID.
		id?:           string
		last_updated?: string
		title!:        string
		token_sources!: [...string]

		// Available values: "JWT".
		token_type!: string

		// Identifier.
		zone_id!: string
	})
}
