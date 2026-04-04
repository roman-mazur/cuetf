package res

#aws_notifications_event_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_notifications_event_rule")
	close({
		arn?:                            string
		event_pattern?:                  string
		event_type!:                     string
		notification_configuration_arn!: string
		regions!: [...string]
		source!: string
	})
}
