package data

#aws_ec2_transit_gateway_connect: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_connect")
	close({
		id?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?: #timeouts
		protocol?: string
		region?:   string
		tags?: [string]: string
		transit_gateway_connect_id?: string
		transit_gateway_id?:         string
		transport_attachment_id?:    string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
