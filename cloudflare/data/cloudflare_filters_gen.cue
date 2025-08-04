package data

#cloudflare_filters: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_filters")
	close({
		// A case-insensitive string to find in the description.
		description?: string

		// A case-insensitive string to find in the expression.
		expression?: string

		// The unique identifier of the filter.
		id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// When true, indicates that the filter is currently paused.
		paused?: bool

		// The filter ref (a short reference tag) to search for. Must be
		// an exact match.
		ref?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// An informative summary of the filter.
			description?: string

			// The filter expression. For more information, refer to
			// [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
			expression?: string

			// The unique identifier of the filter.
			id?: string

			// When true, indicates that the filter is currently paused.
			paused?: bool

			// A short reference tag. Allows you to select related filters.
			ref?: string
		}), [...close({
			// An informative summary of the filter.
			description?: string

			// The filter expression. For more information, refer to
			// [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
			expression?: string

			// The unique identifier of the filter.
			id?: string

			// When true, indicates that the filter is currently paused.
			paused?: bool

			// A short reference tag. Allows you to select related filters.
			ref?: string
		})]])

		// Defines an identifier.
		zone_id!: string
	})
}
