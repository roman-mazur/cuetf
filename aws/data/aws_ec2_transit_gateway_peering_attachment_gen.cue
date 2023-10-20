package data

#aws_ec2_transit_gateway_peering_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_transit_gateway_peering_attachment")
	id?:                      string
	peer_account_id?:         string
	peer_region?:             string
	peer_transit_gateway_id?: string
	tags?: [string]: string
	transit_gateway_id?: string
	filter?:             #filter | [...#filter]
	timeouts?:           #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
