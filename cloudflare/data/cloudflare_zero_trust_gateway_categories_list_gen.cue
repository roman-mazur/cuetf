package data

#cloudflare_zero_trust_gateway_categories_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_categories_list")
	close({
		// Identifier
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// True if the category is in beta and subject to change.
			beta?: bool

			// Which account types are allowed to create policies based on
			// this category. `blocked` categories are blocked
			// unconditionally for all accounts. `removalPending` categories
			// can be removed from policies but not added. `noBlock`
			// categories cannot be blocked.
			// Available values: "free", "premium", "blocked",
			// "removalPending", "noBlock".
			class?: string

			// A short summary of domains in the category.
			description?: string

			// All subcategories for this category.
			subcategories?: matchN(1, [close({
				// True if the category is in beta and subject to change.
				beta?: bool

				// Which account types are allowed to create policies based on
				// this category. `blocked` categories are blocked
				// unconditionally for all accounts. `removalPending` categories
				// can be removed from policies but not added. `noBlock`
				// categories cannot be blocked.
				// Available values: "free", "premium", "blocked",
				// "removalPending", "noBlock".
				class?: string

				// A short summary of domains in the category.
				description?: string

				// The identifier for this category. There is only one category
				// per ID.
				id?: number

				// The name of the category.
				name?: string
			}), [...close({
				// True if the category is in beta and subject to change.
				beta?: bool

				// Which account types are allowed to create policies based on
				// this category. `blocked` categories are blocked
				// unconditionally for all accounts. `removalPending` categories
				// can be removed from policies but not added. `noBlock`
				// categories cannot be blocked.
				// Available values: "free", "premium", "blocked",
				// "removalPending", "noBlock".
				class?: string

				// A short summary of domains in the category.
				description?: string

				// The identifier for this category. There is only one category
				// per ID.
				id?: number

				// The name of the category.
				name?: string
			})]])

			// The identifier for this category. There is only one category
			// per ID.
			id?: number

			// The name of the category.
			name?: string
		}), [...close({
			// True if the category is in beta and subject to change.
			beta?: bool

			// Which account types are allowed to create policies based on
			// this category. `blocked` categories are blocked
			// unconditionally for all accounts. `removalPending` categories
			// can be removed from policies but not added. `noBlock`
			// categories cannot be blocked.
			// Available values: "free", "premium", "blocked",
			// "removalPending", "noBlock".
			class?: string

			// A short summary of domains in the category.
			description?: string

			// All subcategories for this category.
			subcategories?: matchN(1, [close({
				// True if the category is in beta and subject to change.
				beta?: bool

				// Which account types are allowed to create policies based on
				// this category. `blocked` categories are blocked
				// unconditionally for all accounts. `removalPending` categories
				// can be removed from policies but not added. `noBlock`
				// categories cannot be blocked.
				// Available values: "free", "premium", "blocked",
				// "removalPending", "noBlock".
				class?: string

				// A short summary of domains in the category.
				description?: string

				// The identifier for this category. There is only one category
				// per ID.
				id?: number

				// The name of the category.
				name?: string
			}), [...close({
				// True if the category is in beta and subject to change.
				beta?: bool

				// Which account types are allowed to create policies based on
				// this category. `blocked` categories are blocked
				// unconditionally for all accounts. `removalPending` categories
				// can be removed from policies but not added. `noBlock`
				// categories cannot be blocked.
				// Available values: "free", "premium", "blocked",
				// "removalPending", "noBlock".
				class?: string

				// A short summary of domains in the category.
				description?: string

				// The identifier for this category. There is only one category
				// per ID.
				id?: number

				// The name of the category.
				name?: string
			})]])

			// The identifier for this category. There is only one category
			// per ID.
			id?: number

			// The name of the category.
			name?: string
		})]])
	})
}
