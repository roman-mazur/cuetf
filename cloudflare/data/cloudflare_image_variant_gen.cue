package data

#cloudflare_image_variant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_image_variant")
	close({
		// Account identifier tag.
		account_id!: string
		id?:         string
		variant?: close({
			id?: string

			// Indicates whether the variant can access an image without a
			// signature, regardless of image access control.
			never_require_signed_urls?: bool

			// Allows you to define image resizing sizes for different use
			// cases.
			options?: close({
				// The fit property describes how the width and height dimensions
				// should be interpreted.
				// Available values: "scale-down", "contain", "cover", "crop",
				// "pad".
				fit?: string

				// Maximum height in image pixels.
				height?: number

				// What EXIF data should be preserved in the output image.
				// Available values: "keep", "copyright", "none".
				metadata?: string

				// Maximum width in image pixels.
				width?: number
			})
		})
		variant_id!: string
	})
}
