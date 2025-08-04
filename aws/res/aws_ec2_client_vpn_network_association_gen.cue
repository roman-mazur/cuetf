package res

#aws_ec2_client_vpn_network_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_client_vpn_network_association")
	close({
		timeouts?:               #timeouts
		association_id?:         string
		client_vpn_endpoint_id!: string
		id?:                     string
		region?:                 string
		subnet_id!:              string
		vpc_id?:                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
