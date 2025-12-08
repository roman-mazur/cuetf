package data

#cloudflare_zero_trust_gateway_categories_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_gateway_categories_list")
	close({
		// Provide the identifier string.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Indicate whether the category is in beta and subject to change.
			beta?: bool

			// Specify which account types can create policies for this
			// category. `blocked` Blocks unconditionally for all accounts.
			// `removalPending` Allows removal from policies but disables
			// addition. `noBlock` Prevents blocking.
			// Available values: "free", "premium", "blocked",
			// "removalPending", "noBlock".
			class?: string

			// Provide a short summary of domains in the category.
			description?: string

			// Provide all subcategories for this category.
			subcategories?: matchN(1, [close({
				// Indicate whether the category is in beta and subject to change.
				beta?: bool

				// Specify which account types can create policies for this
				// category. `blocked` Blocks unconditionally for all accounts.
				// `removalPending` Allows removal from policies but disables
				// addition. `noBlock` Prevents blocking.
				// Available values: "free", "premium", "blocked",
				// "removalPending", "noBlock".
				class?: string

				// Provide a short summary of domains in the category.
				description?: string

				// Identify this category. Only one category per ID.
				id?: number

				// Specify the category name.
				name?: string
			}), [...close({
				// Indicate whether the category is in beta and subject to change.
				beta?: bool

				// Specify which account types can create policies for this
				// category. `blocked` Blocks unconditionally for all accounts.
				// `removalPending` Allows removal from policies but disables
				// addition. `noBlock` Prevents blocking.
				// Available values: "free", "premium", "blocked",
				// "removalPending", "noBlock".
				class?: string

				// Provide a short summary of domains in the category.
				description?: string

				// Identify this category. Only one category per ID.
				id?: number

				// Specify the category name.
				name?: string
			})]])

			// Identify this category. Only one category per ID.
			id?: number

			// Specify the category name.
			name?: string
		}), [...close({
			// Indicate whether the category is in beta and subject to change.
			beta?: bool

			// Specify which account types can create policies for this
			// category. `blocked` Blocks unconditionally for all accounts.
			// `removalPending` Allows removal from policies but disables
			// addition. `noBlock` Prevents blocking.
			// Available values: "free", "premium", "blocked",
			// "removalPending", "noBlock".
			class?: string

			// Provide a short summary of domains in the category.
			description?: string

			// Provide all subcategories for this category.
			subcategories?: matchN(1, [close({
				// Indicate whether the category is in beta and subject to change.
				beta?: bool

				// Specify which account types can create policies for this
				// category. `blocked` Blocks unconditionally for all accounts.
				// `removalPending` Allows removal from policies but disables
				// addition. `noBlock` Prevents blocking.
				// Available values: "free", "premium", "blocked",
				// "removalPending", "noBlock".
				class?: string

				// Provide a short summary of domains in the category.
				description?: string

				// Identify this category. Only one category per ID.
				id?: number

				// Specify the category name.
				name?: string
			}), [...close({
				// Indicate whether the category is in beta and subject to change.
				beta?: bool

				// Specify which account types can create policies for this
				// category. `blocked` Blocks unconditionally for all accounts.
				// `removalPending` Allows removal from policies but disables
				// addition. `noBlock` Prevents blocking.
				// Available values: "free", "premium", "blocked",
				// "removalPending", "noBlock".
				class?: string

				// Provide a short summary of domains in the category.
				description?: string

				// Identify this category. Only one category per ID.
				id?: number

				// Specify the category name.
				name?: string
			})]])

			// Identify this category. Only one category per ID.
			id?: number

			// Specify the category name.
			name?: string
		})]])
	})
}
