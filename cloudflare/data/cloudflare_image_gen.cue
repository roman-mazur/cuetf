package data

#cloudflare_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_image")
	close({
		account_id!:          string
		creator?:             string
		filename?:            string
		id?:                  string
		image_id!:            string
		meta?:                string
		require_signed_urls?: bool
		uploaded?:            string
		variants?: [...string]
	})
}
