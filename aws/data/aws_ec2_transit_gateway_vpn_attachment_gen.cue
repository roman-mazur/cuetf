package data

#aws_ec2_transit_gateway_vpn_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_vpn_attachment")
	close({
		id?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?: #timeouts
		region?:   string
		tags?: [string]: string
		transit_gateway_id?: string
		vpn_connection_id?:  string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
