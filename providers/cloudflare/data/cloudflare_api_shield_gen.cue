package data

cloudflare_api_shield: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_api_shield")
	close({
		auth_id_characteristics?: matchN(1, [close({
			// For `type: header` or `type: cookie`: The name of the characteristic field,
			// i.e., the header or cookie name.
			//
			// For `type: jwt`: Claim location expressed as
			// `$(token_config_id):$(json_path)`, where `token_config_id`
			// is the ID of the token configuration used in validating the JWT, and `json_path` is a RFC 9535
			// JSONPath (https://goessner.net/articles/JsonPath/, https://www.rfc-editor.org/rfc/rfc9535.html).
			// The JSONPath expression may be in dot or bracket notation, may only specify literal keys
			// or array indexes, and must return a singleton value, which will be interpreted as a string.
			name?: string

			// The type of characteristic.
			// Available values: "header", "cookie", "jwt".
			type?: string
		}), [...close({
			// For `type: header` or `type: cookie`: The name of the characteristic field,
			// i.e., the header or cookie name.
			//
			// For `type: jwt`: Claim location expressed as
			// `$(token_config_id):$(json_path)`, where `token_config_id`
			// is the ID of the token configuration used in validating the JWT, and `json_path` is a RFC 9535
			// JSONPath (https://goessner.net/articles/JsonPath/, https://www.rfc-editor.org/rfc/rfc9535.html).
			// The JSONPath expression may be in dot or bracket notation, may only specify literal keys
			// or array indexes, and must return a singleton value, which will be interpreted as a string.
			name?: string

			// The type of characteristic.
			// Available values: "header", "cookie", "jwt".
			type?: string
		})]])

		// Identifier.
		id?: string

		// Ensures that the configuration is written or retrieved in normalized fashion
		normalize?: bool

		// Identifier.
		zone_id?: string
	})
}
