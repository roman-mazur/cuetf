package res

#cloudflare_custom_pages: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_custom_pages")
	close({
		account_id?:     string
		created_on?:     string
		description?:    string
		id?:             string
		identifier!:     string
		modified_on?:    string
		preview_target?: string
		required_tokens?: [...string]
		state!:   string
		url?:     string
		zone_id?: string
	})
}
