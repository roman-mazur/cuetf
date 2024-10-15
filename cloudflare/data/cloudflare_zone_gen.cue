package data

#cloudflare_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone")
	account_id?: string
	id?:         string
	name?:       string
	name_servers?: [...string]
	paused?: bool
	plan?:   string
	status?: string
	vanity_name_servers?: [...string]
	zone_id?: string
}
