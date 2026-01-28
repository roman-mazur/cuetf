package res

import "list"

#aws_acm_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_acm_certificate")
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

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		not_before?: string
		options?: matchN(1, [#options, list.MaxItems(1) & [...#options]])
		validation_option?: matchN(1, [#validation_option, [...#validation_option]])
		pending_renewal?:     bool
		private_key?:         string
		renewal_eligibility?: string
		renewal_summary?: [...close({
			renewal_status?:        string
			renewal_status_reason?: string
			updated_at?:            string
		})]
		status?: string
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
