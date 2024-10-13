package res

#aws_securitylake_subscriber_notification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_securitylake_subscriber_notification")
	id?:                  string
	subscriber_endpoint?: string
	subscriber_id!:       string
	configuration?: #configuration | [...#configuration]

	#configuration: {
		https_notification_configuration?: #configuration.#https_notification_configuration | [...#configuration.#https_notification_configuration]
		sqs_notification_configuration?: #configuration.#sqs_notification_configuration | [...#configuration.#sqs_notification_configuration]

		#https_notification_configuration: {
			authorization_api_key_name?:  string
			authorization_api_key_value?: string
			endpoint!:                    string
			http_method?:                 string
			target_role_arn!:             string
		}

		#sqs_notification_configuration: {}
	}
}
