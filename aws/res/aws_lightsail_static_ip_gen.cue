package res

#aws_lightsail_static_ip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lightsail_static_ip")
	arn?:          string
	id?:           string
	ip_address?:   string
	name!:         string
	support_code?: string
}
