package data

#aws_ec2_transit_gateway_vpc_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ec2_transit_gateway_vpc_attachment")
	close({
		appliance_mode_support?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		arn?:          string
		dns_support?:  string
		id?:           string
		ipv6_support?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?:                           #timeouts
		security_group_referencing_support?: string
		subnet_ids?: [...string]
		tags?: [string]: string
		transit_gateway_id?: string
		vpc_id?:             string
		vpc_owner_id?:       string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
