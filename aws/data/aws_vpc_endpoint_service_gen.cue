package data

#aws_vpc_endpoint_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_endpoint_service")
	acceptance_required?: bool
	arn?:                 string
	availability_zones?: [...string]
	base_endpoint_dns_names?: [...string]
	id?:                    string
	manages_vpc_endpoints?: bool
	owner?:                 string
	private_dns_name?:      string
	service?:               string
	service_id?:            string
	service_name?:          string
	service_type?:          string
	supported_ip_address_types?: [...string]
	tags?: [string]: string
	vpc_endpoint_policy_supported?: bool
	filter?:                        #filter | [...#filter]
	timeouts?:                      #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
