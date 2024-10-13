package res

import "list"

#aws_xray_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_xray_group")
	arn?:               string
	filter_expression!: string
	group_name!:        string
	id?:                string
	tags?: [string]:     string
	tags_all?: [string]: string
	insights_configuration?: #insights_configuration | list.MaxItems(1) & [...#insights_configuration]

	#insights_configuration: {
		insights_enabled!:      bool
		notifications_enabled?: bool
	}
}
