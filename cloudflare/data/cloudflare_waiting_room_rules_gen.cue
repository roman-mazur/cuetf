package data

#cloudflare_waiting_room_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_waiting_room_rules")
	close({
		action?:          string
		description?:     string
		enabled?:         bool
		expression?:      string
		id?:              string
		last_updated?:    string
		version?:         string
		waiting_room_id!: string
		zone_id!:         string
	})
}
