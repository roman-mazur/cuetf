package res

import "list"

#aws_iot_domain_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_domain_configuration")
	close({
		application_protocol?: string
		arn?:                  string
		authentication_type?:  string
		domain_name?:          string
		domain_type?:          string
		id?:                   string
		name!:                 string
		region?:               string
		authorizer_config?: matchN(1, [#authorizer_config, list.MaxItems(1) & [...#authorizer_config]])
		server_certificate_arns?: [...string]
		service_type?: string
		status?:       string
		tls_config?: matchN(1, [#tls_config, list.MaxItems(1) & [...#tls_config]])
		tags?: [string]:     string
		tags_all?: [string]: string
		validation_certificate_arn?: string
	})

	#authorizer_config: close({
		allow_authorizer_override?: bool
		default_authorizer_name?:   string
	})

	#tls_config: close({
		security_policy?: string
	})
}
