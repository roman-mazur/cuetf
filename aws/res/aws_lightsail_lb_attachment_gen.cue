package res

#aws_lightsail_lb_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lightsail_lb_attachment")
	id?:            string
	instance_name!: string
	lb_name!:       string
}
