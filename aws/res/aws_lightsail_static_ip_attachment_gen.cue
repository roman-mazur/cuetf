package res

#aws_lightsail_static_ip_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_static_ip_attachment")
	id?:             string
	instance_name!:  string
	ip_address?:     string
	static_ip_name!: string
}
