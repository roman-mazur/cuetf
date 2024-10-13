package res

import "list"

#aws_ec2_client_vpn_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_client_vpn_endpoint")
	arn?:               string
	client_cidr_block!: string
	description?:       string
	dns_name?:          string
	dns_servers?: [...string]
	id?: string
	security_group_ids?: [...string]
	self_service_portal?:     string
	self_service_portal_url?: string
	server_certificate_arn!:  string
	session_timeout_hours?:   number
	split_tunnel?:            bool
	tags?: [string]: string
	tags_all?: [string]: string
	transport_protocol?: string
	vpc_id?:             string
	vpn_port?:           number
	authentication_options?: #authentication_options | list.MaxItems(2) & [_, ...] & [...#authentication_options]
	client_connect_options?: #client_connect_options | list.MaxItems(1) & [...#client_connect_options]
	client_login_banner_options?: #client_login_banner_options | list.MaxItems(1) & [...#client_login_banner_options]
	connection_log_options?: #connection_log_options | list.MaxItems(1) & [_, ...] & [...#connection_log_options]

	#authentication_options: {
		active_directory_id?:            string
		root_certificate_chain_arn?:     string
		saml_provider_arn?:              string
		self_service_saml_provider_arn?: string
		type!:                           string
	}

	#client_connect_options: {
		enabled?:             bool
		lambda_function_arn?: string
	}

	#client_login_banner_options: {
		banner_text?: string
		enabled?:     bool
	}

	#connection_log_options: {
		cloudwatch_log_group?:  string
		cloudwatch_log_stream?: string
		enabled!:               bool
	}
}
