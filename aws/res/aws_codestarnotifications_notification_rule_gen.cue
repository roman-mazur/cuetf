package res

import "list"

#aws_codestarnotifications_notification_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codestarnotifications_notification_rule")
	arn?:        string
	detail_type: string
	event_type_ids: [...string]
	id?:      string
	name:     string
	resource: string
	status?:  string
	tags?: [string]: string
	tags_all?: [string]: string
	target?: #target | list.MaxItems(10) & [...#target]

	#target: {
		address: string
		status?: string
		type?:   string
	}
}
