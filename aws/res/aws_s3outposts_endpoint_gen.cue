package res

#aws_s3outposts_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3outposts_endpoint")
	access_type?:              string
	arn?:                      string
	cidr_block?:               string
	creation_time?:            string
	customer_owned_ipv4_pool?: string
	id?:                       string
	network_interfaces?: [...{
		network_interface_id?: string
	}]
	outpost_id:        string
	security_group_id: string
	subnet_id:         string
}
