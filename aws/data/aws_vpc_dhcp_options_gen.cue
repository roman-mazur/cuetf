package data

#aws_vpc_dhcp_options: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_dhcp_options")
	close({
		arn?:             string
		dhcp_options_id?: string
		domain_name?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		domain_name_servers?: [...string]
		id?:                                string
		ipv6_address_preferred_lease_time?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?: #timeouts
		netbios_name_servers?: [...string]
		netbios_node_type?: string
		ntp_servers?: [...string]
		owner_id?: string
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
