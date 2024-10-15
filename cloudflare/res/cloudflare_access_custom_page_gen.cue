package res

#cloudflare_access_custom_page: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_access_custom_page")
	account_id?:  string
	app_count?:   number
	custom_html?: string
	id?:          string
	name!:        string
	type!:        string
	zone_id?:     string
}
