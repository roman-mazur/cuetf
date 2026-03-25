package res

#cloudflare_stream_watermark: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_stream_watermark")
	close({
		// The account identifier tag.
		account_id!: string

		// The date and a time a watermark profile was created.
		created?: string

		// The source URL for a downloaded image. If the watermark profile
		// was created via direct upload, this field is null.
		downloaded_from?: string

		// The image file to upload.
		file!: string

		// The height of the image in pixels.
		height?: number

		// The unique identifier for a watermark profile.
		identifier?: string

		// A short description of the watermark profile.
		name?: string

		// The translucency of the image. A value of `0.0` makes the image
		// completely transparent, and `1.0` makes the image completely
		// opaque. Note that if the image is already semi-transparent,
		// setting this to `1.0` will not make the image completely
		// opaque.
		opacity?: number

		// The whitespace between the adjacent edges (determined by
		// position) of the video and the image. `0.0` indicates no
		// padding, and `1.0` indicates a fully padded video width or
		// length, as determined by the algorithm.
		padding?: number

		// The location of the image. Valid positions are: `upperRight`,
		// `upperLeft`, `lowerLeft`, `lowerRight`, and `center`. Note
		// that `center` ignores the `padding` parameter.
		position?: string

		// The size of the image relative to the overall size of the
		// video. This parameter will adapt to horizontal and vertical
		// videos automatically. `0.0` indicates no scaling (use the size
		// of the image as-is), and `1.0 `fills the entire video.
		scale?: number

		// The size of the image in bytes.
		size?: number

		// The unique identifier for a watermark profile.
		uid?: string

		// The width of the image in pixels.
		width?: number
	})
}
