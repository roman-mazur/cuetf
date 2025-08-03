package res

#aws_ec2_client_vpn_authorization_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_client_vpn_authorization_rule")
	close({
		access_group_id?:        string
		timeouts?:               #timeouts
		authorize_all_groups?:   bool
		client_vpn_endpoint_id!: string
		description?:            string
		id?:                     string
		region?:                 string
		target_network_cidr!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
