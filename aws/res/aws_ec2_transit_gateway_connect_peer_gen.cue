package res

#aws_ec2_transit_gateway_connect_peer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_transit_gateway_connect_peer")
	arn?:              string
	bgp_asn?:          string
	bgp_peer_address?: string
	bgp_transit_gateway_addresses?: [...string]
	id?: string
	inside_cidr_blocks: [...string]
	peer_address: string
	tags?: [string]: string
	tags_all?: [string]: string
	transit_gateway_address?:      string
	transit_gateway_attachment_id: string
	timeouts?:                     #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
