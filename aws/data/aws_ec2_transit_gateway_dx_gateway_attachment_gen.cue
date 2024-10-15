package data

#aws_ec2_transit_gateway_dx_gateway_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_dx_gateway_attachment")
	dx_gateway_id?: string
	id?:            string
	tags?: [string]: string
	transit_gateway_id?: string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
