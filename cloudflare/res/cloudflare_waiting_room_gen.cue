package res

#cloudflare_waiting_room: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_waiting_room")
	cookie_suffix?:             string
	custom_page_html?:          string
	default_template_language?: string
	description?:               string
	disable_session_renewal?:   bool
	enabled_origin_commands?: [...string]
	host!:                  string
	id?:                    string
	json_response_enabled?: bool
	name!:                  string
	new_users_per_minute!:  number
	path?:                  string
	queue_all?:             bool
	queueing_method?:       string
	queueing_status_code?:  number
	session_duration?:      number
	suspended?:             bool
	total_active_users!:    number
	zone_id!:               string
	additional_routes?: #additional_routes | [...#additional_routes]
	timeouts?: #timeouts

	#additional_routes: {
		host!: string
		path?: string
	}

	#timeouts: {
		create?: string
		update?: string
	}
}
