package res

import "list"

#aws_iot_domain_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iot_domain_configuration")
	arn?:         string
	domain_name?: string
	domain_type?: string
	id?:          string
	name!:        string
	server_certificate_arns?: [...string]
	service_type?: string
	status?:       string
	tags?: [string]:     string
	tags_all?: [string]: string
	validation_certificate_arn?: string
	authorizer_config?: #authorizer_config | list.MaxItems(1) & [...#authorizer_config]
	tls_config?: #tls_config | list.MaxItems(1) & [...#tls_config]

	#authorizer_config: {
		allow_authorizer_override?: bool
		default_authorizer_name?:   string
	}

	#tls_config: security_policy?: string
}
