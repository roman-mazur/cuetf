package res

#aws_notifications_managed_notification_account_contact_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_notifications_managed_notification_account_contact_association")
	close({
		contact_identifier!:                     string
		managed_notification_configuration_arn!: string
	})
}
