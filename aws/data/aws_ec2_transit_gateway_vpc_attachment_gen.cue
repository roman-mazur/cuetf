package data

#aws_ec2_transit_gateway_vpc_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_vpc_attachment")
	close({
		appliance_mode_support?: string
		arn?:                    string
		dns_support?:            string
		id?:                     string
		ipv6_support?:           string
		region?:                 string
		filter?: matchN(1, [#filter, [...#filter]])
		security_group_referencing_support?: string
		timeouts?:                           #timeouts
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
