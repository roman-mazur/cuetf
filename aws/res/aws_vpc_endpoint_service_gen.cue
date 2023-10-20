package res

#aws_vpc_endpoint_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_endpoint_service")
	acceptance_required: bool
	allowed_principals?: [...string]
	arn?: string
	availability_zones?: [...string]
	base_endpoint_dns_names?: [...string]
	gateway_load_balancer_arns?: [...string]
	id?:                    string
	manages_vpc_endpoints?: bool
	network_load_balancer_arns?: [...string]
	private_dns_name?: string
	private_dns_name_configuration?: [...{
		name?:  string
		state?: string
		type?:  string
		value?: string
	}]
	service_name?: string
	service_type?: string
	state?:        string
	supported_ip_address_types?: [...string]
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
