package res

#cloudflare_email_routing_catch_all: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_email_routing_catch_all")
	enabled?: bool
	id?:      string
	name:     string
	tag?:     string
	zone_id:  string
	action?:  #action | [_, ...] & [...#action]
	matcher?: #matcher | [_, ...] & [...#matcher]

	#action: {
		type: string
		value: [...string]
	}

	#matcher: type: string
}
