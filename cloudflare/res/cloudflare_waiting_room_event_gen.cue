package res

#cloudflare_waiting_room_event: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_waiting_room_event")
	close({
		created_on?:              string
		custom_page_html?:        string
		description?:             string
		disable_session_renewal?: bool
		event_end_time!:          string
		event_start_time!:        string
		id?:                      string
		modified_on?:             string
		name!:                    string
		new_users_per_minute?:    number
		prequeue_start_time?:     string
		queueing_method?:         string
		session_duration?:        number
		shuffle_at_event_start?:  bool
		suspended?:               bool
		total_active_users?:      number
		turnstile_action?:        string
		turnstile_mode?:          string
		waiting_room_id!:         string
		zone_id!:                 string
	})
}
