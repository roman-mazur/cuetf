package data

#aws_ec2_transit_gateway_connect: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ec2_transit_gateway_connect")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		filter?: matchN(1, [#filter, [...#filter]])
		id?:       string
		protocol?: string
		tags?: [string]: string
		transit_gateway_connect_id?: string
		transit_gateway_id?:         string
		timeouts?:                   #timeouts
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
