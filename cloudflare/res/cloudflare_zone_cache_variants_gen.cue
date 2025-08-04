package res

#cloudflare_zone_cache_variants: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_cache_variants")
	close({
		// Whether the setting is editable
		editable?: bool

		// Value of the zone setting.
		value!: close({
			// List of strings with the MIME types of all the variants that
			// should be served for avif.
			avif?: [...string]

			// List of strings with the MIME types of all the variants that
			// should be served for bmp.
			bmp?: [...string]

			// List of strings with the MIME types of all the variants that
			// should be served for gif.
			gif?: [...string]

			// List of strings with the MIME types of all the variants that
			// should be served for jp2.
			jp2?: [...string]

			// List of strings with the MIME types of all the variants that
			// should be served for jpeg.
			jpeg?: [...string]

			// List of strings with the MIME types of all the variants that
			// should be served for jpg.
			jpg?: [...string]

			// List of strings with the MIME types of all the variants that
			// should be served for jpg2.
			jpg2?: [...string]

			// List of strings with the MIME types of all the variants that
			// should be served for png.
			png?: [...string]

			// List of strings with the MIME types of all the variants that
			// should be served for tif.
			tif?: [...string]

			// List of strings with the MIME types of all the variants that
			// should be served for tiff.
			tiff?: [...string]

			// List of strings with the MIME types of all the variants that
			// should be served for webp.
			webp?: [...string]
		})

		// Identifier
		id?: string

		// Last time this setting was modified.
		modified_on?: string

		// Identifier
		zone_id!: string
	})
}
