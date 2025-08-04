package res

#aws_notifications_channel_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_notifications_channel_association")
	close({
		arn!:                            string
		notification_configuration_arn!: string
	})
}
