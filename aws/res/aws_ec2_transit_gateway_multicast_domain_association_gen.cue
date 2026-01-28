package res

#aws_ec2_transit_gateway_multicast_domain_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ec2_transit_gateway_multicast_domain_association")
	close({
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                              string
		subnet_id!:                           string
		transit_gateway_attachment_id!:       string
		transit_gateway_multicast_domain_id!: string
		timeouts?:                            #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
