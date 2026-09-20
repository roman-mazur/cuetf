package res

cloudflare_content_scanning_expression: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_content_scanning_expression")
	close({
		body!: matchN(1, [close({
			// Defines the custom content extraction expression used to reach content objects in the request.
			payload!: string
		}), [...close({
			// Defines the custom content extraction expression used to reach content objects in the request.
			payload!: string
		})]])

		// Defines the unique ID for this Content Scanning custom expression.
		id?: string

		// Defines the custom content extraction expression used to reach content objects in the request.
		payload?: string

		// Defines an identifier.
		zone_id!: string
	})
}
