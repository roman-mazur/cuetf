package data

cloudflare_zero_trust_dex_tests: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dex_tests")
	close({
		// Unique identifier linked to an account.
		account_id?: string

		// Filter by test type.
		// Available values: "http", "traceroute".
		kind?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// The configuration object which contains the details for the WARP client to conduct the test.
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

			// Additional details about the test.
			description?: string

			// The unique identifier for the test.
			id?: string

			// How often the test will run.
			interval?: string

			// The name of the DEX test. Must be unique.
			name?: string

			// DEX rules targeted by this test
			target_policies?: matchN(1, [close({
				// Whether the DEX rule is the account default.
				default?: bool

				// The id of the DEX rule.
				id?: string

				// The name of the DEX rule.
				name?: string
			}), [...close({
				// Whether the DEX rule is the account default.
				default?: bool

				// The id of the DEX rule.
				id?: string

				// The name of the DEX rule.
				name?: string
			})]])

			// Determines whether or not the test is active.
			enabled?:  bool
			targeted?: bool

			// The unique identifier for the test.
			test_id?: string
		}), [...close({
			// The configuration object which contains the details for the WARP client to conduct the test.
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

			// Additional details about the test.
			description?: string

			// The unique identifier for the test.
			id?: string

			// How often the test will run.
			interval?: string

			// The name of the DEX test. Must be unique.
			name?: string

			// DEX rules targeted by this test
			target_policies?: matchN(1, [close({
				// Whether the DEX rule is the account default.
				default?: bool

				// The id of the DEX rule.
				id?: string

				// The name of the DEX rule.
				name?: string
			}), [...close({
				// Whether the DEX rule is the account default.
				default?: bool

				// The id of the DEX rule.
				id?: string

				// The name of the DEX rule.
				name?: string
			})]])

			// Determines whether or not the test is active.
			enabled?:  bool
			targeted?: bool

			// The unique identifier for the test.
			test_id?: string
		})]])

		// Filter by test name.
		test_name?: string
	})
}
