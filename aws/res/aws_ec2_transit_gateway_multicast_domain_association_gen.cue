package res

#aws_ec2_transit_gateway_multicast_domain_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_transit_gateway_multicast_domain_association")
	id?:                                 string
	subnet_id:                           string
	transit_gateway_attachment_id:       string
	transit_gateway_multicast_domain_id: string
	timeouts?:                           #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
