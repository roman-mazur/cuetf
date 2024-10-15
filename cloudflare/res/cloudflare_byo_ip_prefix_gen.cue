package res

#cloudflare_byo_ip_prefix: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_byo_ip_prefix")
	account_id!:    string
	advertisement?: string
	description?:   string
	id?:            string
	prefix_id!:     string
}
