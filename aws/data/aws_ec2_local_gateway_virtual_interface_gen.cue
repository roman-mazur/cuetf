package data

#aws_ec2_local_gateway_virtual_interface: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ec2_local_gateway_virtual_interface")
	close({
		id?:               string
		local_address?:    string
		local_bgp_asn?:    number
		local_gateway_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		local_gateway_virtual_interface_ids?: [...string]
		filter?: matchN(1, [#filter, [...#filter]])
		peer_address?: string
		timeouts?:     #timeouts
		peer_bgp_asn?: number
		tags?: [string]: string
		vlan?: number
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
