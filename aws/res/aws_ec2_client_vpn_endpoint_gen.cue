package res

import "list"

#aws_ec2_client_vpn_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_client_vpn_endpoint")
	close({
		arn?:                           string
		client_cidr_block!:             string
		description?:                   string
		disconnect_on_session_timeout?: bool
		dns_name?:                      string
		dns_servers?: [...string]
		id?:     string
		region?: string
		security_group_ids?: [...string]
		authentication_options?: matchN(1, [#authentication_options, list.MaxItems(2) & [_, ...] & [...#authentication_options]])
		self_service_portal?:     string
		self_service_portal_url?: string
		client_connect_options?: matchN(1, [#client_connect_options, list.MaxItems(1) & [...#client_connect_options]])
		client_login_banner_options?: matchN(1, [#client_login_banner_options, list.MaxItems(1) & [...#client_login_banner_options]])
		server_certificate_arn!: string
		client_route_enforcement_options?: matchN(1, [#client_route_enforcement_options, list.MaxItems(1) & [...#client_route_enforcement_options]])
		connection_log_options?: matchN(1, [#connection_log_options, list.MaxItems(1) & [_, ...] & [...#connection_log_options]])
		session_timeout_hours?: number
		split_tunnel?:          bool
		tags?: [string]:     string
		tags_all?: [string]: string
		transport_protocol?: string
		vpc_id?:             string
		vpn_port?:           number
	})

	#authentication_options: close({
		active_directory_id?:            string
		root_certificate_chain_arn?:     string
		saml_provider_arn?:              string
		self_service_saml_provider_arn?: string
		type!:                           string
	})

	#client_connect_options: close({
		enabled?:             bool
		lambda_function_arn?: string
	})

	#client_login_banner_options: close({
		banner_text?: string
		enabled?:     bool
	})

	#client_route_enforcement_options: close({
		enforced?: bool
	})

	#connection_log_options: close({
		cloudwatch_log_group?:  string
		cloudwatch_log_stream?: string
		enabled!:               bool
	})
}
