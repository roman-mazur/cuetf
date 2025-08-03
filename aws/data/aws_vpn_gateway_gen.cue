package data

#aws_vpn_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpn_gateway")
	close({
		amazon_side_asn?: string
		arn?:             string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?:          #timeouts
		attached_vpc_id?:   string
		availability_zone?: string
		id?:                string
		region?:            string
		state?:             string
		tags?: [string]: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
