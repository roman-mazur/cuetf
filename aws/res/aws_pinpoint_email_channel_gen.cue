package res

#aws_pinpoint_email_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_pinpoint_email_channel")
	close({
		application_id!:    string
		configuration_set?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                         string
		enabled?:                        bool
		from_address!:                   string
		id?:                             string
		identity!:                       string
		messages_per_second?:            number
		orchestration_sending_role_arn?: string
		role_arn?:                       string
	})
}
