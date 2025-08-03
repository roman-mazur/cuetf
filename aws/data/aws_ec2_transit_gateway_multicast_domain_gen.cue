package data

#aws_ec2_transit_gateway_multicast_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_multicast_domain")
	close({
		arn?: string
		associations?: [...close({
			subnet_id?:                     string
			transit_gateway_attachment_id?: string
		})]
		filter?: matchN(1, [#filter, [...#filter]])
		auto_accept_shared_associations?: string
		id?:                              string
		igmpv2_support?:                  string
		members?: [...close({
			group_ip_address?:     string
			network_interface_id?: string
		})]
		owner_id?: string
		timeouts?: #timeouts
		region?:   string
		sources?: [...close({
			group_ip_address?:     string
			network_interface_id?: string
		})]
		state?:                  string
		static_sources_support?: string
		tags?: [string]: string
		transit_gateway_attachment_id?:       string
		transit_gateway_id?:                  string
		transit_gateway_multicast_domain_id?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
