package res

#aws_lightsail_lb: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lightsail_lb")
	arn?:               string
	created_at?:        string
	dns_name?:          string
	health_check_path?: string
	id?:                string
	instance_port!:     number
	ip_address_type?:   string
	name!:              string
	protocol?:          string
	public_ports?: [...number]
	support_code?: string
	tags?: [string]: string
	tags_all?: [string]: string
}
