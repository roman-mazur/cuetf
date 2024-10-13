package data

#aws_ec2_local_gateway_virtual_interface: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_local_gateway_virtual_interface")
	id?:               string
	local_address?:    string
	local_bgp_asn?:    number
	local_gateway_id?: string
	local_gateway_virtual_interface_ids?: [...string]
	peer_address?: string
	peer_bgp_asn?: number
	tags?: [string]: string
	vlan?: number
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
