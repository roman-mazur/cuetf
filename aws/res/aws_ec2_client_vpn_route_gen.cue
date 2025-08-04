package res

#aws_ec2_client_vpn_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_client_vpn_route")
	close({
		timeouts?:               #timeouts
		client_vpn_endpoint_id!: string
		description?:            string
		destination_cidr_block!: string
		id?:                     string
		origin?:                 string
		region?:                 string
		target_vpc_subnet_id!:   string
		type?:                   string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
