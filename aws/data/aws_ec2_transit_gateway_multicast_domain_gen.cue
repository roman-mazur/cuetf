package data

#aws_ec2_transit_gateway_multicast_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_multicast_domain")
	close({
		arn?: string
		filter?: matchN(1, [#filter, [...#filter]])
		associations?: [...close({
			subnet_id?:                     string
			transit_gateway_attachment_id?: string
		})]
		auto_accept_shared_associations?: string
		id?:                              string
		igmpv2_support?:                  string
		members?: [...close({
			group_ip_address?:     string
			network_interface_id?: string
		})]
		owner_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		timeouts?: #timeouts
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
