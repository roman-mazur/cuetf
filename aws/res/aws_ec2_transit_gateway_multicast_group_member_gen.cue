package res

#aws_ec2_transit_gateway_multicast_group_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_multicast_group_member")
	group_ip_address!:                    string
	id?:                                  string
	network_interface_id!:                string
	transit_gateway_multicast_domain_id!: string
}
