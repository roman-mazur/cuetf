package data

#cloudflare_zero_trust_dex_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dex_rules")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Filter results by rule name
		name?: string

		// Which property to sort results by
		// Available values: "name", "created_at", "updated_at".
		sort_by?: string

		// Sort direction for sort_by property
		// Available values: "ASC", "DESC".
		sort_order?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			rules?: matchN(1, [close({
				created_at?:  string
				description?: string

				// API Resource UUID tag.
				id?:         string
				match?:      string
				name?:       string
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
			}), [...close({
				created_at?:  string
				description?: string

				// API Resource UUID tag.
				id?:         string
				match?:      string
				name?:       string
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
			})]])
		}), [...close({
			rules?: matchN(1, [close({
				created_at?:  string
				description?: string

				// API Resource UUID tag.
				id?:         string
				match?:      string
				name?:       string
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
			}), [...close({
				created_at?:  string
				description?: string

				// API Resource UUID tag.
				id?:         string
				match?:      string
				name?:       string
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
			})]])
		})]])
	})
}
