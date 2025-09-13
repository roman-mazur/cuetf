package res

#cloudflare_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_image")
	close({
		// Account identifier tag.
		account_id!: string

		// Can set the creator field with an internal user ID.
		creator?: string

		// An image binary data. Only needed when type is uploading a
		// file.
		file?: string

		// Image file name.
		filename?: string

		// An optional custom unique identifier for your image.
		id!: string

		// User modifiable key-value store. Can be used for keeping
		// references to another system of record for managing images.
		// Metadata must not exceed 1024 bytes.
		meta?: string

		// User modifiable key-value store. Can use used for keeping
		// references to another system of record for managing images.
		metadata?: string

		// Indicates whether the image requires a signature token for the
		// access.
		require_signed_urls?: bool

		// When the media item was uploaded.
		uploaded?: string

		// A URL to fetch an image from origin. Only needed when type is
		// uploading from a URL.
		url?: string

		// Object specifying available variants for an image.
		variants?: [...string]
	})
}
