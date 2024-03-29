package res

#aws_ec2_transit_gateway_multicast_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_transit_gateway_multicast_domain")
	arn?:                             string
	auto_accept_shared_associations?: string
	id?:                              string
	igmpv2_support?:                  string
	owner_id?:                        string
	static_sources_support?:          string
	tags?: [string]: string
	tags_all?: [string]: string
	transit_gateway_id: string
	timeouts?:          #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
