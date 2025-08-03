package res

#aws_appstream_user_stack_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appstream_user_stack_association")
	close({
		authentication_type!:     string
		id?:                      string
		region?:                  string
		send_email_notification?: bool
		stack_name!:              string
		user_name!:               string
	})
}
