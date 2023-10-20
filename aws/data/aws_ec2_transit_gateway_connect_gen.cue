package data

#aws_ec2_transit_gateway_connect: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_transit_gateway_connect")
	id?:       string
	protocol?: string
	tags?: [string]: string
	transit_gateway_connect_id?: string
	transit_gateway_id?:         string
	transport_attachment_id?:    string
	filter?:                     #filter | [...#filter]
	timeouts?:                   #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
