package res

#aws_pinpoint_sms_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_pinpoint_sms_channel")
	close({
		application_id!:                  string
		enabled?:                         bool
		id?:                              string
		promotional_messages_per_second?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                            string
		sender_id?:                         string
		short_code?:                        string
		transactional_messages_per_second?: number
	})
}
