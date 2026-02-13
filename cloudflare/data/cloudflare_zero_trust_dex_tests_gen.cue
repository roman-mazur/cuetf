package data

#cloudflare_zero_trust_dex_tests: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dex_tests")
	close({
		// Filter by test type
		// Available values: "http", "traceroute".
		kind?:       string
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
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

			// Additional details about the test.
			description?: string

			// Determines whether or not the test is active.
			enabled?: bool

			// The unique identifier for the test.
			id?: string

			// How often the test will run.
			interval?: string

			// The name of the DEX test. Must be unique.
			name?: string

			// DEX rules targeted by this test
			target_policies?: matchN(1, [close({
				// Whether the DEX rule is the account default
				default?: bool

				// API Resource UUID tag.
				id?: string

				// The name of the DEX rule
				name?: string
			}), [...close({
				// Whether the DEX rule is the account default
				default?: bool

				// API Resource UUID tag.
				id?: string

				// The name of the DEX rule
				name?: string
			})]])

			// The unique identifier for the test.
			test_id?:  string
			targeted?: bool
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

			// Additional details about the test.
			description?: string

			// Determines whether or not the test is active.
			enabled?: bool

			// The unique identifier for the test.
			id?: string

			// How often the test will run.
			interval?: string

			// The name of the DEX test. Must be unique.
			name?: string

			// DEX rules targeted by this test
			target_policies?: matchN(1, [close({
				// Whether the DEX rule is the account default
				default?: bool

				// API Resource UUID tag.
				id?: string

				// The name of the DEX rule
				name?: string
			}), [...close({
				// Whether the DEX rule is the account default
				default?: bool

				// API Resource UUID tag.
				id?: string

				// The name of the DEX rule
				name?: string
			})]])

			// The unique identifier for the test.
			test_id?:  string
			targeted?: bool
		})]])

		// Filter by test name
		test_name?: string
	})
}
