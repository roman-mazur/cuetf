package data

#aws_ec2_transit_gateway_multicast_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_transit_gateway_multicast_domain")
	arn?: string
	associations?: [...{
		subnet_id?:                     string
		transit_gateway_attachment_id?: string
	}]
	auto_accept_shared_associations?: string
	id?:                              string
	igmpv2_support?:                  string
	members?: [...{
		group_ip_address?:     string
		network_interface_id?: string
	}]
	owner_id?: string
	sources?: [...{
		group_ip_address?:     string
		network_interface_id?: string
	}]
	state?:                  string
	static_sources_support?: string
	tags?: [string]: string
	transit_gateway_attachment_id?:       string
	transit_gateway_id?:                  string
	transit_gateway_multicast_domain_id?: string
	filter?:                              #filter | [...#filter]
	timeouts?:                            #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
