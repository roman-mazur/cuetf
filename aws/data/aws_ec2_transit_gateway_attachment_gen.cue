package data

#aws_ec2_transit_gateway_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ec2_transit_gateway_attachment")
	close({
		arn?:                                        string
		association_state?:                          string
		association_transit_gateway_route_table_id?: string
		id?:                                         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		resource_id?:       string
		resource_owner_id?: string
		filter?: matchN(1, [#filter, [...#filter]])
		resource_type?: string
		state?:         string
		tags?: [string]: string
		transit_gateway_attachment_id?: string
		transit_gateway_id?:            string
		transit_gateway_owner_id?:      string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
