package data

#aws_ec2_transit_gateway_route_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_route_table")
	close({
		arn?: string
		filter?: matchN(1, [#filter, [...#filter]])
		default_association_route_table?: bool
		default_propagation_route_table?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		tags?: [string]: string
		timeouts?:           #timeouts
		transit_gateway_id?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
