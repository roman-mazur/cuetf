package res

#aws_notifications_organizational_unit_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_notifications_organizational_unit_association")
	close({
		notification_configuration_arn!: string
		organizational_unit_id!:         string
	})
}
