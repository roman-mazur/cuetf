package res

import "list"

#aws_codestarnotifications_notification_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codestarnotifications_notification_rule")
	close({
		arn?: string
		target?: matchN(1, [#target, list.MaxItems(10) & [...#target]])
		detail_type!: string
		event_type_ids!: [...string]
		id?:       string
		name!:     string
		region?:   string
		resource!: string
		status?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#target: close({
		address!: string
		status?:  string
		type?:    string
	})
}
