package data

#aws_ec2_transit_gateway_dx_gateway_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_dx_gateway_attachment")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		arn?:           string
		dx_gateway_id?: string
		id?:            string
		region?:        string
		tags?: [string]: string
		transit_gateway_id?: string
		timeouts?:           #timeouts
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
