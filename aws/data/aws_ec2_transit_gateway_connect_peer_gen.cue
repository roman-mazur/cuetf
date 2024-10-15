package data

#aws_ec2_transit_gateway_connect_peer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_connect_peer")
	arn?:              string
	bgp_asn?:          string
	bgp_peer_address?: string
	bgp_transit_gateway_addresses?: [...string]
	id?: string
	inside_cidr_blocks?: [...string]
	peer_address?: string
	tags?: [string]: string
	transit_gateway_address?:         string
	transit_gateway_attachment_id?:   string
	transit_gateway_connect_peer_id?: string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
