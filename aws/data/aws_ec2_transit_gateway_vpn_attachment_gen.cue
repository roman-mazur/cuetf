package data

#aws_ec2_transit_gateway_vpn_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_transit_gateway_vpn_attachment")
	id?: string
	tags?: [string]: string
	transit_gateway_id?: string
	vpn_connection_id?:  string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
