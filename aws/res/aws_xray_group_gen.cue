package res

import "list"

#aws_xray_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_xray_group")
	close({
		arn?: string
		insights_configuration?: matchN(1, [#insights_configuration, list.MaxItems(1) & [...#insights_configuration]])
		filter_expression!: string
		group_name!:        string
		id?:                string
		region?:            string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#insights_configuration: close({
		insights_enabled!:      bool
		notifications_enabled?: bool
	})
}
