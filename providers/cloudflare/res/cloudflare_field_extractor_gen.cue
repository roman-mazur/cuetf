package res

cloudflare_field_extractor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_field_extractor")
	close({
		// Cloudflare account ID.
		account_id!: string

		// Extractor type.
		extractor!: string

		// Extractor type.
		id?: string
		rules!: matchN(1, [close({
			description?: string
			fields!: matchN(1, [close({
				expression!: string
				name!:       string
			}), [...close({
				expression!: string
				name!:       string
			})]])
			ref!: string
		}), [...close({
			description?: string
			fields!: matchN(1, [close({
				expression!: string
				name!:       string
			}), [...close({
				expression!: string
				name!:       string
			})]])
			ref!: string
		})]])
	})
}
