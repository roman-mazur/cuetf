package res

#cloudflare_pages_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_pages_domain")
	account_id:   string
	domain:       string
	id?:          string
	project_name: string
	status?:      string
}
