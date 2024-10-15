package res

#aws_ec2_client_vpn_authorization_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_client_vpn_authorization_rule")
	access_group_id?:        string
	authorize_all_groups?:   bool
	client_vpn_endpoint_id!: string
	description?:            string
	id?:                     string
	target_network_cidr!:    string
	timeouts?:               #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
