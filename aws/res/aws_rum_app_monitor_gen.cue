package res

import "list"

#aws_rum_app_monitor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rum_app_monitor")
	app_monitor_id?: string
	arn?:            string
	cw_log_enabled?: bool
	cw_log_group?:   string
	domain!:         string
	id?:             string
	name!:           string
	tags?: [string]:     string
	tags_all?: [string]: string
	app_monitor_configuration?: #app_monitor_configuration | list.MaxItems(1) & [...#app_monitor_configuration]
	custom_events?: #custom_events | list.MaxItems(1) & [...#custom_events]

	#app_monitor_configuration: {
		allow_cookies?: bool
		enable_xray?:   bool
		excluded_pages?: [...string]
		favorite_pages?: [...string]
		guest_role_arn?:   string
		identity_pool_id?: string
		included_pages?: [...string]
		session_sample_rate?: number
		telemetries?: [...string]
	}

	#custom_events: status?: string
}
