package res

#cloudflare_api_shield: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_api_shield")
	close({
		auth_id_characteristics!: matchN(1, [close({
			// The name of the characteristic field, i.e., the header or
			// cookie name. When using type "jwt", this must be a claim
			// location expressed as `$(token_config_id):$(json_path)`, where
			// `token_config_id` is the ID of the token configuration used in
			// validating the JWT, and `json_path` is a RFC 9535 JSONPath
			// expression.
			name!: string

			// The type of characteristic.
			// Available values: "header", "cookie", "jwt".
			type!: string
		}), [...close({
			// The name of the characteristic field, i.e., the header or
			// cookie name. When using type "jwt", this must be a claim
			// location expressed as `$(token_config_id):$(json_path)`, where
			// `token_config_id` is the ID of the token configuration used in
			// validating the JWT, and `json_path` is a RFC 9535 JSONPath
			// expression.
			name!: string

			// The type of characteristic.
			// Available values: "header", "cookie", "jwt".
			type!: string
		})]])

		// Identifier.
		id?: string

		// Identifier.
		zone_id!: string
	})
}
