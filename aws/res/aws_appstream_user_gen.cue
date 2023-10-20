package res

#aws_appstream_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appstream_user")
	arn?:                     string
	authentication_type:      string
	created_time?:            string
	enabled?:                 bool
	first_name?:              string
	id?:                      string
	last_name?:               string
	send_email_notification?: bool
	user_name:                string
}
