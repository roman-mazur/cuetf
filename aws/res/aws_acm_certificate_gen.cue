package res

import "list"

#aws_acm_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_acm_certificate")
	close({
		arn?:                       string
		certificate_authority_arn?: string
		certificate_body?:          string
		certificate_chain?:         string
		domain_name?:               string
		domain_validation_options?: [...close({
			domain_name?:           string
			resource_record_name?:  string
			resource_record_type?:  string
			resource_record_value?: string
		})]
		early_renewal_duration?: string
		id?:                     string
		key_algorithm?:          string
		not_after?:              string
		not_before?:             string
		pending_renewal?:        bool
		options?: matchN(1, [#options, list.MaxItems(1) & [...#options]])
		private_key?:         string
		region?:              string
		renewal_eligibility?: string
		renewal_summary?: [...close({
			renewal_status?:        string
			renewal_status_reason?: string
			updated_at?:            string
		})]
		status?: string
		validation_option?: matchN(1, [#validation_option, [...#validation_option]])
		subject_alternative_names?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
		validation_emails?: [...string]
		validation_method?: string
	})

	#options: close({
		certificate_transparency_logging_preference?: string
		export?:                                      string
	})

	#validation_option: close({
		domain_name!:       string
		validation_domain!: string
	})
}
