package res

#cloudflare_custom_pages: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_custom_pages")
	account_id?: string
	id?:         string
	state?:      string
	type:        string
	url:         string
	zone_id?:    string
}
