package res

import "list"

#cloudflare_notification_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_notification_policy")
	account_id:             string
	alert_type:             string
	created?:               string
	description?:           string
	enabled:                bool
	id?:                    string
	modified?:              string
	name:                   string
	email_integration?:     #email_integration | [...#email_integration]
	filters?:               #filters | list.MaxItems(1) & [...#filters]
	pagerduty_integration?: #pagerduty_integration | [...#pagerduty_integration]
	webhooks_integration?:  #webhooks_integration | [...#webhooks_integration]

	#email_integration: {
		id:    string
		name?: string
	}

	#filters: {
		actions?: [...string]
		alert_trigger_preferences?: [...string]
		enabled?: [...string]
		environment?: [...string]
		event?: [...string]
		event_source?: [...string]
		event_type?: [...string]
		group_by?: [...string]
		health_check_id?: [...string]
		input_id?: [...string]
		limit?: [...string]
		megabits_per_second?: [...string]
		new_health?: [...string]
		packets_per_second?: [...string]
		pool_id?: [...string]
		product?: [...string]
		project_id?: [...string]
		protocol?: [...string]
		requests_per_second?: [...string]
		services?: [...string]
		slo?: [...string]
		status?: [...string]
		target_hostname?: [...string]
		target_zone_name?: [...string]
		where?: [...string]
		zones?: [...string]
	}

	#pagerduty_integration: {
		id:    string
		name?: string
	}

	#webhooks_integration: {
		id:    string
		name?: string
	}
}
