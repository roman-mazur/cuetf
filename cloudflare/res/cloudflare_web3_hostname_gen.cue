package res

#cloudflare_web3_hostname: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_web3_hostname")
	created_on?:  string
	description?: string
	dnslink?:     string
	id?:          string
	modified_on?: string
	name!:        string
	status?:      string
	target!:      string
	zone_id!:     string
}
