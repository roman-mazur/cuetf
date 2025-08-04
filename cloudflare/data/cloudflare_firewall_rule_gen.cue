package data

#cloudflare_firewall_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_firewall_rule")
	close({
		action?:      string
		description?: string
		id?:          string
		paused?:      bool
		priority?:    number
		products?: [...string]
		ref?:     string
		rule_id?: string
		zone_id!: string
	})
}
