package data

#aws_ec2_transit_gateway_peering_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_peering_attachment")
	close({
		arn?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?:                #timeouts
		id?:                      string
		peer_account_id?:         string
		peer_region?:             string
		peer_transit_gateway_id?: string
		region?:                  string
		state?:                   string
		tags?: [string]: string
		transit_gateway_id?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
