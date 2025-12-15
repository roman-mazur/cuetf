package res

#aws_appstream_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_appstream_user")
	close({
		arn?:                 string
		authentication_type!: string
		created_time?:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		enabled?:                 bool
		first_name?:              string
		id?:                      string
		last_name?:               string
		send_email_notification?: bool
		user_name!:               string
	})
}
