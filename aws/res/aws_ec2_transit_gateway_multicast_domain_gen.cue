package res

#aws_ec2_transit_gateway_multicast_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_multicast_domain")
	close({
		arn?:                             string
		timeouts?:                        #timeouts
		auto_accept_shared_associations?: string
		id?:                              string
		igmpv2_support?:                  string
		owner_id?:                        string
		region?:                          string
		static_sources_support?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
		transit_gateway_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
