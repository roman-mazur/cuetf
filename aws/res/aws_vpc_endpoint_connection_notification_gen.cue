package res

#aws_vpc_endpoint_connection_notification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_endpoint_connection_notification")
	connection_events!: [...string]
	connection_notification_arn!: string
	id?:                          string
	notification_type?:           string
	state?:                       string
	vpc_endpoint_id?:             string
	vpc_endpoint_service_id?:     string
}
