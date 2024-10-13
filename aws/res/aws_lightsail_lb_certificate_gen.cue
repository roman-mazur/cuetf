package res

#aws_lightsail_lb_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lightsail_lb_certificate")
	arn?:         string
	created_at?:  string
	domain_name?: string
	domain_validation_records?: [...{
		domain_name?:           string
		resource_record_name?:  string
		resource_record_type?:  string
		resource_record_value?: string
	}]
	id?:      string
	lb_name!: string
	name!:    string
	subject_alternative_names?: [...string]
	support_code?: string
}
