package res

#cloudflare_zone_lockdown: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_zone_lockdown")
	description?: string
	id?:          string
	paused?:      bool
	priority?:    number
	urls: [...string]
	zone_id:         string
	configurations?: #configurations | [_, ...] & [...#configurations]

	#configurations: {
		target: string
		value:  string
	}
}
