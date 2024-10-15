package res

import "list"

#aws_iot_ca_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_ca_certificate")
	active!:                  bool
	allow_auto_registration!: bool
	arn?:                     string
	ca_certificate_pem!:      string
	certificate_mode?:        string
	customer_version?:        number
	generation_id?:           string
	id?:                      string
	tags?: [string]:     string
	tags_all?: [string]: string
	validity?: [...{
		not_after?:  string
		not_before?: string
	}]
	verification_certificate_pem?: string
	registration_config?: #registration_config | list.MaxItems(1) & [...#registration_config]

	#registration_config: {
		role_arn?:      string
		template_body?: string
		template_name?: string
	}
}
