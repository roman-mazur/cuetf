package res

import "list"

#aws_ssmincidents_response_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssmincidents_response_plan")
	close({
		arn?: string
		chat_channel?: [...string]
		display_name?: string
		engagements?: [...string]
		id?:     string
		name!:   string
		region?: string
		action?: matchN(1, [#action, list.MaxItems(1) & [...#action]])
		tags?: [string]: string
		incident_template?: matchN(1, [#incident_template, list.MaxItems(1) & [_, ...] & [...#incident_template]])
		integration?: matchN(1, [#integration, list.MaxItems(1) & [...#integration]])
		tags_all?: [string]: string
	})

	#action: close({
		ssm_automation?: matchN(1, [_#defs."/$defs/action/$defs/ssm_automation", [..._#defs."/$defs/action/$defs/ssm_automation"]])
	})

	#incident_template: close({
		notification_target?: matchN(1, [_#defs."/$defs/incident_template/$defs/notification_target", [..._#defs."/$defs/incident_template/$defs/notification_target"]])
		dedupe_string?: string
		impact!:        number
		incident_tags?: [string]: string
		summary?: string
		title!:   string
	})

	#integration: close({
		pagerduty?: matchN(1, [_#defs."/$defs/integration/$defs/pagerduty", [..._#defs."/$defs/integration/$defs/pagerduty"]])
	})

	_#defs: "/$defs/action/$defs/ssm_automation": close({
		parameter?: matchN(1, [_#defs."/$defs/action/$defs/ssm_automation/$defs/parameter", [..._#defs."/$defs/action/$defs/ssm_automation/$defs/parameter"]])
		document_name!:    string
		document_version?: string
		dynamic_parameters?: [string]: string
		role_arn!:       string
		target_account?: string
	})

	_#defs: "/$defs/action/$defs/ssm_automation/$defs/parameter": close({
		name!: string
		values!: [...string]
	})

	_#defs: "/$defs/incident_template/$defs/notification_target": close({
		sns_topic_arn!: string
	})

	_#defs: "/$defs/integration/$defs/pagerduty": close({
		name!:       string
		secret_id!:  string
		service_id!: string
	})
}
