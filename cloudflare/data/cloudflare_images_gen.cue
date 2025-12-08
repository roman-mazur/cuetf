package data

#cloudflare_images: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_images")
	close({
		// Account identifier tag.
		account_id!: string

		// Internal user ID set within the creator field. Setting to empty
		// string "" will return images where creator field is not set
		creator?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			images?: matchN(1, [close({
				// Can set the creator field with an internal user ID.
				creator?: string

				// Image file name.
				filename?: string

				// Image unique identifier.
				id?: string

				// User modifiable key-value store. Can be used for keeping
				// references to another system of record for managing images.
				// Metadata must not exceed 1024 bytes.
				meta?: string

				// Indicates whether the image can be a accessed only using it's
				// UID. If set to true, a signed token needs to be generated with
				// a signing key to view the image.
				require_signed_urls?: bool

				// When the media item was uploaded.
				uploaded?: string

				// Object specifying available variants for an image.
				variants?: [...string]
			}), [...close({
				// Can set the creator field with an internal user ID.
				creator?: string

				// Image file name.
				filename?: string

				// Image unique identifier.
				id?: string

				// User modifiable key-value store. Can be used for keeping
				// references to another system of record for managing images.
				// Metadata must not exceed 1024 bytes.
				meta?: string

				// Indicates whether the image can be a accessed only using it's
				// UID. If set to true, a signed token needs to be generated with
				// a signing key to view the image.
				require_signed_urls?: bool

				// When the media item was uploaded.
				uploaded?: string

				// Object specifying available variants for an image.
				variants?: [...string]
			})]])
		}), [...close({
			images?: matchN(1, [close({
				// Can set the creator field with an internal user ID.
				creator?: string

				// Image file name.
				filename?: string

				// Image unique identifier.
				id?: string

				// User modifiable key-value store. Can be used for keeping
				// references to another system of record for managing images.
				// Metadata must not exceed 1024 bytes.
				meta?: string

				// Indicates whether the image can be a accessed only using it's
				// UID. If set to true, a signed token needs to be generated with
				// a signing key to view the image.
				require_signed_urls?: bool

				// When the media item was uploaded.
				uploaded?: string

				// Object specifying available variants for an image.
				variants?: [...string]
			}), [...close({
				// Can set the creator field with an internal user ID.
				creator?: string

				// Image file name.
				filename?: string

				// Image unique identifier.
				id?: string

				// User modifiable key-value store. Can be used for keeping
				// references to another system of record for managing images.
				// Metadata must not exceed 1024 bytes.
				meta?: string

				// Indicates whether the image can be a accessed only using it's
				// UID. If set to true, a signed token needs to be generated with
				// a signing key to view the image.
				require_signed_urls?: bool

				// When the media item was uploaded.
				uploaded?: string

				// Object specifying available variants for an image.
				variants?: [...string]
			})]])
		})]])

		// Max items to fetch, default: 1000
		max_items?: number
	})
}
