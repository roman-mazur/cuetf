package res

#cloudflare_web_analytics_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_web_analytics_site")
	account_id!:   string
	auto_install!: bool
	host?:         string
	id?:           string
	ruleset_id?:   string
	site_tag?:     string
	site_token?:   string
	snippet?:      string
	zone_tag?:     string
	timeouts?:     #timeouts

	#timeouts: create?: string
}
