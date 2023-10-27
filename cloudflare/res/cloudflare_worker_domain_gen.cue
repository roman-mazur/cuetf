package res

#cloudflare_worker_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_worker_domain")
	account_id:   string
	environment?: string
	hostname:     string
	id?:          string
	service:      string
	zone_id:      string
}
