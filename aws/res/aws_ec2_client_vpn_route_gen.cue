package res

#aws_ec2_client_vpn_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_client_vpn_route")
	client_vpn_endpoint_id: string
	description?:           string
	destination_cidr_block: string
	id?:                    string
	origin?:                string
	target_vpc_subnet_id:   string
	type?:                  string
	timeouts?:              #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
