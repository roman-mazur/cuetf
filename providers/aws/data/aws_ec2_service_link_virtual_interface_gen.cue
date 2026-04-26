package data

#aws_ec2_service_link_virtual_interface: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ec2_service_link_virtual_interface")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		arn?:                 string
		configuration_state?: string
		id?:                  string
		local_address?:       string
		outpost_arn?:         string
		outpost_id?:          string
		outpost_lag_id?:      string
		owner_id?:            string
		peer_address?:        string
		peer_bgp_asn?:        number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]: string
		vlan?: number
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
