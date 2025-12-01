package res

#aws_securitylake_subscriber_notification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_securitylake_subscriber_notification")
	close({
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		subscriber_endpoint?: string
		subscriber_id!:       string
		configuration?: matchN(1, [#configuration, [...#configuration]])
	})

	#configuration: close({
		https_notification_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/https_notification_configuration", [..._#defs."/$defs/configuration/$defs/https_notification_configuration"]])
		sqs_notification_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/sqs_notification_configuration", [..._#defs."/$defs/configuration/$defs/sqs_notification_configuration"]])
	})

	_#defs: "/$defs/configuration/$defs/https_notification_configuration": close({
		authorization_api_key_name?:  string
		authorization_api_key_value?: string
		endpoint!:                    string
		http_method?:                 string
		target_role_arn!:             string
	})

	_#defs: "/$defs/configuration/$defs/sqs_notification_configuration": close({})
}
