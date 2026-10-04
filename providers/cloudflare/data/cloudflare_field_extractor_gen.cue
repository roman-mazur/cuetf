package data

cloudflare_field_extractor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_field_extractor")
	close({
		// Cloudflare account ID.
		account_id!: string

		// Extractor type.
		extractor!: string
		rules?: matchN(1, [close({
			// Human-readable rule description.
			description?: string
			fields?: matchN(1, [close({
				// Wirefilter value expression.
				expression?: string

				// Field name.
				name?: string
			}), [...close({
				// Wirefilter value expression.
				expression?: string

				// Field name.
				name?: string
			})]])

			// Stable rule identifier.
			ref?: string
		}), [...close({
			// Human-readable rule description.
			description?: string
			fields?: matchN(1, [close({
				// Wirefilter value expression.
				expression?: string

				// Field name.
				name?: string
			}), [...close({
				// Wirefilter value expression.
				expression?: string

				// Field name.
				name?: string
			})]])

			// Stable rule identifier.
			ref?: string
		})]])
	})
}
