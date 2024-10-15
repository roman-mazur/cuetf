package res

#cloudflare_email_routing_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_routing_rule")
	enabled?:  bool
	id?:       string
	name!:     string
	priority?: number
	tag?:      string
	zone_id!:  string
	action?: #action | [...#action]
	matcher?: #matcher | [...#matcher]

	#action: {
		type!: string
		value?: [...string]
	}

	#matcher: {
		field?: string
		type!:  string
		value?: string
	}
}
