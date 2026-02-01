package res

#aws_notifications_managed_notification_additional_channel_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_notifications_managed_notification_additional_channel_association")
	close({
		channel_arn!:              string
		managed_notification_arn!: string
	})
}
