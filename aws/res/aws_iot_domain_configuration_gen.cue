package res

import "list"

#aws_iot_domain_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_iot_domain_configuration")
	close({
		application_protocol?: string
		arn?:                  string
		authentication_type?:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		domain_name?: string
		domain_type?: string
		id?:          string
		name!:        string
		authorizer_config?: matchN(1, [#authorizer_config, list.MaxItems(1) & [...#authorizer_config]])
		tls_config?: matchN(1, [#tls_config, list.MaxItems(1) & [...#tls_config]])
		server_certificate_arns?: [...string]
		service_type?: string
		status?:       string
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
