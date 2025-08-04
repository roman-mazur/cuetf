package data

#cloudflare_waiting_room: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_waiting_room")
	close({
		cookie_suffix?:             string
		created_on?:                string
		custom_page_html?:          string
		default_template_language?: string
		description?:               string
		disable_session_renewal?:   bool
		enabled_origin_commands?: [...string]
		host?:                           string
		id?:                             string
		json_response_enabled?:          bool
		modified_on?:                    string
		name?:                           string
		new_users_per_minute?:           number
		next_event_prequeue_start_time?: string
		additional_routes?: matchN(1, [close({
			host?: string
			path?: string
		}), [...close({
			host?: string
			path?: string
		})]])
		next_event_start_time?: string
		path?:                  string
		queue_all?:             bool
		queueing_method?:       string
		queueing_status_code?:  number
		session_duration?:      number
		cookie_attributes?: close({
			samesite?: string
			secure?:   string
		})
		suspended?:          bool
		total_active_users?: number
		turnstile_action?:   string
		turnstile_mode?:     string
		waiting_room_id?:    string
		zone_id!:            string
	})
}
