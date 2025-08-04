package res

#cloudflare_waiting_room_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_waiting_room_rules")
	close({
		id?: string
		rules!: matchN(1, [close({
			action!:      string
			description?: string
			enabled?:     bool
			expression!:  string
		}), [...close({
			action!:      string
			description?: string
			enabled?:     bool
			expression!:  string
		})]])
		waiting_room_id!: string
		zone_id!:         string
	})
}
