package res

#cloudflare_waiting_room_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_waiting_room_rules")
	id?:             string
	waiting_room_id: string
	zone_id:         string
	rules?:          #rules | [...#rules]

	#rules: {
		action:       string
		description?: string
		expression:   string
		id?:          string
		status?:      string
		version?:     string
	}
}
