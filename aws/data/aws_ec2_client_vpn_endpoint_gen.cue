package data

#aws_ec2_client_vpn_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_client_vpn_endpoint")
	close({
		arn?: string
		authentication_options?: [...close({
			active_directory_id?:            string
			root_certificate_chain_arn?:     string
			saml_provider_arn?:              string
			self_service_saml_provider_arn?: string
			type?:                           string
		})]
		client_cidr_block?: string
		client_connect_options?: [...close({
			enabled?:             bool
			lambda_function_arn?: string
		})]
		client_login_banner_options?: [...close({
			banner_text?: string
			enabled?:     bool
		})]
		client_route_enforcement_options?: [...close({
			enforced?: bool
		})]
		client_vpn_endpoint_id?: string
		connection_log_options?: [...close({
			cloudwatch_log_group?:  string
			cloudwatch_log_stream?: string
			enabled?:               bool
		})]
		description?: string
		dns_name?:    string
		dns_servers?: [...string]
		id?: string
		filter?: matchN(1, [#filter, [...#filter]])
		region?: string
		security_group_ids?: [...string]
		self_service_portal?:     string
		self_service_portal_url?: string
		server_certificate_arn?:  string
		timeouts?:                #timeouts
		session_timeout_hours?:   number
		split_tunnel?:            bool
		tags?: [string]: string
		transport_protocol?: string
		vpc_id?:             string
		vpn_port?:           number
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
