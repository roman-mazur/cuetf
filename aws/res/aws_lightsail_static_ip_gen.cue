package res

#aws_lightsail_static_ip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_static_ip")
	close({
		arn?:          string
		id?:           string
		ip_address?:   string
		name!:         string
		region?:       string
		support_code?: string
	})
}
