package res

#aws_ec2_transit_gateway_multicast_domain_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_multicast_domain_association")
	close({
		timeouts?:                            #timeouts
		id?:                                  string
		region?:                              string
		subnet_id!:                           string
		transit_gateway_attachment_id!:       string
		transit_gateway_multicast_domain_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
