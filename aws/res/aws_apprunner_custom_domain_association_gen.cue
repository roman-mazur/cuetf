package res

#aws_apprunner_custom_domain_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_apprunner_custom_domain_association")
	certificate_validation_records?: [...{
		name?:   string
		status?: string
		type?:   string
		value?:  string
	}]
	dns_target?:           string
	domain_name:           string
	enable_www_subdomain?: bool
	id?:                   string
	service_arn:           string
	status?:               string
}
