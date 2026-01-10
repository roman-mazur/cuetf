package res

#aws_notificationscontacts_email_contact: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_notificationscontacts_email_contact")
	close({
		arn?:           string
		email_address!: string
		name!:          string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
