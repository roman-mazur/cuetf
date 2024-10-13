package res

#aws_pinpointsmsvoicev2_configuration_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_pinpointsmsvoicev2_configuration_set")
	arn?:                  string
	default_message_type?: string
	default_sender_id?:    string
	id?:                   string
	name!:                 string
	tags?: [string]: string
	tags_all?: [string]: string
}
