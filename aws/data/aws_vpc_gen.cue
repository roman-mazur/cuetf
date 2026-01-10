package data

#aws_vpc: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_vpc")
	close({
		arn?: string
		filter?: matchN(1, [#filter, [...#filter]])
		cidr_block?: string
		cidr_block_associations?: [...close({
			association_id?: string
			cidr_block?:     string
			state?:          string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                               string
		default?:                              bool
		dhcp_options_id?:                      string
		enable_dns_hostnames?:                 bool
		enable_dns_support?:                   bool
		enable_network_address_usage_metrics?: bool
		id?:                                   string
		timeouts?:                             #timeouts
		instance_tenancy?:                     string
		ipv6_association_id?:                  string
		ipv6_cidr_block?:                      string
		main_route_table_id?:                  string
		owner_id?:                             string
		state?:                                string
		tags?: [string]: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
