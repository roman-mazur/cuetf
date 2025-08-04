package data

#aws_ec2_local_gateway_virtual_interface: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_local_gateway_virtual_interface")
	close({
		id?:               string
		local_address?:    string
		local_bgp_asn?:    number
		local_gateway_id?: string
		local_gateway_virtual_interface_ids?: [...string]
		peer_address?: string
		peer_bgp_asn?: number
		filter?: matchN(1, [#filter, [...#filter]])
		region?:   string
		timeouts?: #timeouts
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
