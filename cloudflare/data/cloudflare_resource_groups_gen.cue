package data

#cloudflare_resource_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_resource_groups")
	close({
		// Account identifier tag.
		account_id!: string

		// ID of the resource group to be fetched.
		id?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// Identifier of the resource group.
			id?: string

			// Attributes associated to the resource group.
			meta?: close({
				key?:   string
				value?: string
			})

			// Name of the resource group.
			name?: string

			// The scope associated to the resource group
			scope?: matchN(1, [close({
				// This is a combination of pre-defined resource name and
				// identifier (like Account ID etc.)
				key?: string

				// A list of scope objects for additional context.
				objects?: matchN(1, [close({
					// This is a combination of pre-defined resource name and
					// identifier (like Zone ID etc.)
					key?: string
				}), [...close({
					// This is a combination of pre-defined resource name and
					// identifier (like Zone ID etc.)
					key?: string
				})]])
			}), [...close({
				// This is a combination of pre-defined resource name and
				// identifier (like Account ID etc.)
				key?: string

				// A list of scope objects for additional context.
				objects?: matchN(1, [close({
					// This is a combination of pre-defined resource name and
					// identifier (like Zone ID etc.)
					key?: string
				}), [...close({
					// This is a combination of pre-defined resource name and
					// identifier (like Zone ID etc.)
					key?: string
				})]])
			})]])
		}), [...close({
			// Identifier of the resource group.
			id?: string

			// Attributes associated to the resource group.
			meta?: close({
				key?:   string
				value?: string
			})

			// Name of the resource group.
			name?: string

			// The scope associated to the resource group
			scope?: matchN(1, [close({
				// This is a combination of pre-defined resource name and
				// identifier (like Account ID etc.)
				key?: string

				// A list of scope objects for additional context.
				objects?: matchN(1, [close({
					// This is a combination of pre-defined resource name and
					// identifier (like Zone ID etc.)
					key?: string
				}), [...close({
					// This is a combination of pre-defined resource name and
					// identifier (like Zone ID etc.)
					key?: string
				})]])
			}), [...close({
				// This is a combination of pre-defined resource name and
				// identifier (like Account ID etc.)
				key?: string

				// A list of scope objects for additional context.
				objects?: matchN(1, [close({
					// This is a combination of pre-defined resource name and
					// identifier (like Zone ID etc.)
					key?: string
				}), [...close({
					// This is a combination of pre-defined resource name and
					// identifier (like Zone ID etc.)
					key?: string
				})]])
			})]])
		})]])

		// Max items to fetch, default: 1000
		max_items?: number

		// Name of the resource group to be fetched.
		name?: string
	})
}
