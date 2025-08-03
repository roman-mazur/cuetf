package res

import "list"

#aws_cloudwatch_composite_alarm: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_composite_alarm")
	close({
		actions_enabled?: bool
		alarm_actions?: [...string]
		alarm_description?: string
		alarm_name!:        string
		alarm_rule!:        string
		arn?:               string
		id?:                string
		insufficient_data_actions?: [...string]
		actions_suppressor?: matchN(1, [#actions_suppressor, list.MaxItems(1) & [...#actions_suppressor]])
		ok_actions?: [...string]
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#actions_suppressor: close({
		alarm!:            string
		extension_period!: number
		wait_period!:      number
	})
}
