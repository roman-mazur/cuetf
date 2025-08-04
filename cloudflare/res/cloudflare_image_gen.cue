package res

#cloudflare_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_image")
	close({
		account_id!:          string
		creator?:             string
		file?:                string
		filename?:            string
		id!:                  string
		meta?:                string
		metadata?:            string
		require_signed_urls?: bool
		uploaded?:            string
		url?:                 string
		variants?: [...string]
	})
}
