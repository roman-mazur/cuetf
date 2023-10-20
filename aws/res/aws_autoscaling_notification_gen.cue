package res

#aws_autoscaling_notification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_autoscaling_notification")
	group_names: [...string]
	id?: string
	notifications: [...string]
	topic_arn: string
}
