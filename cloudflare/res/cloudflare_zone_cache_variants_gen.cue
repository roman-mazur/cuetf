package res

#cloudflare_zone_cache_variants: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_cache_variants")
	avif?: [...string]
	bmp?: [...string]
	gif?: [...string]
	id?: string
	jp2?: [...string]
	jpeg?: [...string]
	jpg?: [...string]
	jpg2?: [...string]
	png?: [...string]
	tif?: [...string]
	tiff?: [...string]
	webp?: [...string]
	zone_id!: string
}
