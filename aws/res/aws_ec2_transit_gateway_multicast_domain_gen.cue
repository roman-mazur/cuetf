package res

#aws_ec2_transit_gateway_multicast_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ec2_transit_gateway_multicast_domain")
	close({
		arn?:                             string
		auto_accept_shared_associations?: string
		id?:                              string
		igmpv2_support?:                  string
		owner_id?:                        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		static_sources_support?: string
		timeouts?:               #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		transit_gateway_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
