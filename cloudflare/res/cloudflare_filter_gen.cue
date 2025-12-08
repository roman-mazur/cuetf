package res

#cloudflare_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_filter")
	close({
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

		// Defines an identifier.
		zone_id!: string
		body!: matchN(1, [close({
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
	})
}
