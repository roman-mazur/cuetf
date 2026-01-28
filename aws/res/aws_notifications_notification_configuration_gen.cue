package res

#aws_notifications_notification_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_notifications_notification_configuration")
	close({
		aggregation_duration?: string
		arn?:                  string
		description!:          string
		name!:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
