package data

#cloudflare_zero_trust_dex_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dex_rule")
	close({
		account_id?:  string
		created_at?:  string
		description?: string

		// API Resource UUID tag.
		id?:    string
		match?: string
		name?:  string

		// API Resource UUID tag.
		rule_id!:    string
		updated_at?: string
		targeted_tests?: matchN(1, [close({
			// The configuration object which contains the details for the
			// WARP client to conduct the test.
			data?: close({
				// The desired endpoint to test.
				host?: string

				// The type of test.
				// Available values: "http", "traceroute".
				kind?: string

				// The HTTP request method type.
				// Available values: "GET".
				method?: string
			})
			enabled?: bool
			name?:    string
			test_id?: string
		}), [...close({
			// The configuration object which contains the details for the
			// WARP client to conduct the test.
			data?: close({
				// The desired endpoint to test.
				host?: string

				// The type of test.
				// Available values: "http", "traceroute".
				kind?: string

				// The HTTP request method type.
				// Available values: "GET".
				method?: string
			})
			enabled?: bool
			name?:    string
			test_id?: string
		})]])
	})
}
