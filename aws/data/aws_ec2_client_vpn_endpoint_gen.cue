package data

#aws_ec2_client_vpn_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_client_vpn_endpoint")
	arn?: string
	authentication_options?: [...{
		active_directory_id?:            string
		root_certificate_chain_arn?:     string
		saml_provider_arn?:              string
		self_service_saml_provider_arn?: string
		type?:                           string
	}]
	client_cidr_block?: string
	client_connect_options?: [...{
		enabled?:             bool
		lambda_function_arn?: string
	}]
	client_login_banner_options?: [...{
		banner_text?: string
		enabled?:     bool
	}]
	client_vpn_endpoint_id?: string
	connection_log_options?: [...{
		cloudwatch_log_group?:  string
		cloudwatch_log_stream?: string
		enabled?:               bool
	}]
	description?: string
	dns_name?:    string
	dns_servers?: [...string]
	id?: string
	security_group_ids?: [...string]
	self_service_portal?:    string
	server_certificate_arn?: string
	session_timeout_hours?:  number
	split_tunnel?:           bool
	tags?: [string]: string
	transport_protocol?: string
	vpc_id?:             string
	vpn_port?:           number
	filter?:             #filter | [...#filter]
	timeouts?:           #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}