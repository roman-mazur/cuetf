package res

#aws_alb_listener_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_alb_listener_certificate")
	certificate_arn!: string
	id?:              string
	listener_arn!:    string
}
