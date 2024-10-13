package res

#cloudflare_zero_trust_access_custom_page: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_zero_trust_access_custom_page")
	account_id?:  string
	app_count?:   number
	custom_html?: string
	id?:          string
	name!:        string
	type!:        string
	zone_id?:     string
}
