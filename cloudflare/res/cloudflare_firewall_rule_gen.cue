package res

#cloudflare_firewall_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_firewall_rule")
	action!:      string
	description?: string
	filter_id!:   string
	id?:          string
	paused?:      bool
	priority?:    number
	products?: [...string]
	zone_id!: string
}
