package data

#cloudflare_record: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_record")
	content?:   string
	hostname!:  string
	id?:        string
	priority?:  number
	proxiable?: bool
	proxied?:   bool
	ttl?:       number
	type?:      string
	value?:     string
	zone_id!:   string
}
