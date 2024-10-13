package res

#aws_lb_listener_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lb_listener_certificate")
	certificate_arn!: string
	id?:              string
	listener_arn!:    string
}
