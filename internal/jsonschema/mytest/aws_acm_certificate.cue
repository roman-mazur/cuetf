package mytest

#aws_acm_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_acm_certificate")
	arn?:                       string
	certificate_authority_arn?: string
	certificate_body?:          string
	certificate_chain?:         string
	domain_name?:               string
	domain_validation_options?: [...{
		domain_name?:           string
		resource_record_name?:  string
		resource_record_type?:  string
		resource_record_value?: string
	}]
	early_renewal_duration?: string
	id?:                     string
	key_algorithm?:          string
	not_after?:              string
	not_before?:             string
	pending_renewal?:        bool
	private_key?:            string
	renewal_eligibility?:    string
	renewal_summary?: [...{
		renewal_status?:        string
		renewal_status_reason?: string
		updated_at?:            string
	}]
	status?: string
	subject_alternative_names?: [...string]
	tags?: [string]: string
	tags_all?: [string]: string
	type?: string
	validation_emails?: [...string]
	validation_method?: string
	options?: [...#options]
	validation_option?: [...#validation_option]

	#options: certificate_transparency_logging_preference?: string

	#validation_option: {
		domain_name:       string
		validation_domain: string
	}
}
