package res

#cloudflare_workers_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_domain")
	account_id!:  string
	environment?: string
	hostname!:    string
	id?:          string
	service!:     string
	zone_id!:     string
}
