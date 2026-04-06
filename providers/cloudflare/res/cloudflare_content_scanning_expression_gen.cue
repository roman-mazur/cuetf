package res

#cloudflare_content_scanning_expression: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_content_scanning_expression")
	close({
		body!: matchN(1, [close({
			// Defines the ruleset expression to use in matching content
			// objects.
			payload!: string
		}), [...close({
			// Defines the ruleset expression to use in matching content
			// objects.
			payload!: string
		})]])

		// defines the unique ID for this custom scan expression.
		id?: string

		// Defines an identifier.
		zone_id!: string
	})
}
