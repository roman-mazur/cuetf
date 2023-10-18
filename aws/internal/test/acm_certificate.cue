package test

testAcmCert: {
	name:   "aws_acm_certificate"
	sample: #awsResourceSample & {#name: "acm_certificate"}

	// Confirm specific values.
	sample: output: {
		primitives: certificate_chain: type: "string"

		complex: domain_validation_options: type:                               "#acm_certificate_domain_validation_options"
		complexDefs: acm_certificate_domain_validation_options: cueType:        "list"
		complexDefs: acm_certificate_domain_validation_options: element:        "#acm_certificate_domain_validation_options_object"
		complexDefs: acm_certificate_domain_validation_options_object: cueType: "struct"
		complexDefs: acm_certificate_domain_validation_options_object: fields: resource_record_name: type: "string"

		complex: options: type:                        "#acm_certificate_options"
		complexDefs: acm_certificate_options: cueType: "variant"
		// complexDefs: acm_certificate_options: element: "#acm_certificate_options_object"
		//	complexDefs: acm_certificate_options_object: cueType: "struct"
		//	complexDefs: acm_certificate_options_object: fields: certificate_transparency_logging_preference: "string"
	}

	validation: {
		primitives: length:  len(sample.output.primitives) & 9
		complex: length:     len(sample.output.complex) & 6
		complexDefs: length: len(sample.output.complexDefs) & 11

		arnComputed:   sample.input.attributes.arn.computed & true
		noArnInSchema: sample.output.primitives.arn == _|_ & true

		optional: certificateChain:        sample.output.primitives.certificate_chain.optional & true
		optional: domainValidationOptions: sample.output.complex.domain_validation_options.optional & true
	}
}

testAcmCert: sample: code: """
	
	#acm_certificate: {
		certificate_authority_arn?: string
		certificate_body?: string
		certificate_chain?: string
		domain_name?: string
		early_renewal_duration?: string
		id?: string
		key_algorithm?: string
		private_key?: string
		validation_method?: string
		domain_validation_options: #acm_certificate_domain_validation_options
		options?: #acm_certificate_options
		subject_alternative_names?: #acm_certificate_subject_alternative_names
		tags?: #acm_certificate_tags
		tags_all?: #acm_certificate_tags_all
		validation_option?: #acm_certificate_validation_option
	}
	
	#acm_certificate_domain_validation_options: [...#acm_certificate_domain_validation_options_object]
	
	#acm_certificate_domain_validation_options_object: {
		resource_record_name: string
	}
	
	#acm_certificate_options: #acm_certificate_options_block | #acm_certificate_options_list
	
	#acm_certificate_options_block: {
		certificate_transparency_logging_preference?: string
	}
	
	#acm_certificate_options_list: [...#acm_certificate_options_block]
	#acm_certificate_subject_alternative_names: [...string]
	#acm_certificate_tags: [string]: string
	#acm_certificate_tags_all: [string]: string
	#acm_certificate_validation_option: #acm_certificate_validation_option_block | #acm_certificate_validation_option_set
	
	#acm_certificate_validation_option_block: {
		domain_name!: string
		validation_domain!: string
	}
	
	#acm_certificate_validation_option_set: [...#acm_certificate_validation_option_block]
	
	"""
