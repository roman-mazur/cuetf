package res

import "list"

#aws_cloudwatch_composite_alarm: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_composite_alarm")
	actions_enabled?: bool
	alarm_actions?: [...string]
	alarm_description?: string
	alarm_name:         string
	alarm_rule:         string
	arn?:               string
	id?:                string
	insufficient_data_actions?: [...string]
	ok_actions?: [...string]
	tags?: [string]: string
	tags_all?: [string]: string
	actions_suppressor?: #actions_suppressor | list.MaxItems(1) & [...#actions_suppressor]

	#actions_suppressor: {
		alarm:            string
		extension_period: number
		wait_period:      number
	}
}
