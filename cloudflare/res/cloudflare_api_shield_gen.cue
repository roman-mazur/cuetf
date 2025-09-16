package res

#cloudflare_api_shield: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_api_shield")
	close({
		auth_id_characteristics!: matchN(1, [close({
			// The name of the characteristic field, i.e., the header or
			// cookie name.
			name!: string

			// The type of characteristic.
			// Available values: "header", "cookie", "jwt".
			type!: string
		}), [...close({
			// The name of the characteristic field, i.e., the header or
			// cookie name.
			name!: string

			// The type of characteristic.
			// Available values: "header", "cookie", "jwt".
			type!: string
		})]])

		// Identifier.
		id?: string

		// Whether the API call was successful.
		success?: bool

		// Identifier.
		zone_id!: string
		errors?: matchN(1, [close({
			code?:              number
			documentation_url?: string
			message?:           string
			source?: close({
				pointer?: string
			})
		}), [...close({
			code?:              number
			documentation_url?: string
			message?:           string
			source?: close({
				pointer?: string
			})
		})]])
		messages?: matchN(1, [close({
			code?:              number
			documentation_url?: string
			message?:           string
			source?: close({
				pointer?: string
			})
		}), [...close({
			code?:              number
			documentation_url?: string
			message?:           string
			source?: close({
				pointer?: string
			})
		})]])
	})
}
