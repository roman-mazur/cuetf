package data

#aws_ec2_transit_gateway_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_transit_gateway_attachment")
	arn?:                                        string
	association_state?:                          string
	association_transit_gateway_route_table_id?: string
	id?:                                         string
	resource_id?:                                string
	resource_owner_id?:                          string
	resource_type?:                              string
	state?:                                      string
	tags?: [string]: string
	transit_gateway_attachment_id?: string
	transit_gateway_id?:            string
	transit_gateway_owner_id?:      string
	filter?:                        #filter | [...#filter]

	#filter: {
		name: string
		values: [...string]
	}
}
