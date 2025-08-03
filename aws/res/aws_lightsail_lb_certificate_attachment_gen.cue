package res

#aws_lightsail_lb_certificate_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_lb_certificate_attachment")
	close({
		certificate_name!: string
		id?:               string
		lb_name!:          string
		region?:           string
	})
}
