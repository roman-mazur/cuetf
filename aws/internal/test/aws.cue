package test

import (
	"rmazur.io/cuetf"
	"rmazur.io/cuetf/aws/internal/schemaaws"
)

aws: schemaaws.provider_schemas["registry.terraform.io/hashicorp/aws"]

cuetf.#TestSuite
#providerSchema: aws
#tests: [
	testBlockAttr,
]

// Block attribute transformation test.
testBlockAttr: {
	sample: cuetf.#tBlockAttr & {input: aws.resource_schemas.aws_acm_certificate.block, prefix: "acm_certificate"}

	// Confirm specific values.
	sample: output: {
		primitives: certificate_chain: type:     "string"

		complex: domain_validation_options: type:                               "acm_certificate_domain_validation_options"
		complexDefs: acm_certificate_domain_validation_options: cueType:        "list"
		complexDefs: acm_certificate_domain_validation_options: element:        "#acm_certificate_domain_validation_options_object"
		complexDefs: acm_certificate_domain_validation_options_object: cueType: "struct"
		complexDefs: acm_certificate_domain_validation_options_object: fields: resource_record_name: type: "string"

		complex: options: type: "acm_certificate_options"
		//	complexDefs: acm_certificate_options: cueType: "list"
		//	complexDefs: acm_certificate_options: element: "#acm_certificate_options_object"
		//	complexDefs: acm_certificate_options_object: cueType: "struct"
		//	complexDefs: acm_certificate_options_object: fields: certificate_transparency_logging_preference: "string"
	}

	validation: {
		primitives: length:  len(sample.output.primitives) & 9
		complex: length:     len(sample.output.complex) & 6
		complexDefs: length: len(sample.output.complexDefs) & 7

		arnComputed:   sample.input.attributes.arn.computed & true
		noArnInSchema: sample.output.primitives.arn == _|_ & true

		optional: certificateChain: sample.output.primitives.certificate_chain.optional & true
		optional: domainValidationOptions: sample.output.complex.domain_validation_options.optional & true
	}
}

// TODO: Re-enable the generated code comparison.
_testBlockAttr: code: """
	#acm_certificate: {
		arn: string
		certificate_authority_arn: string
		certificate_body: string
		certificate_chain: string
		domain_name: string
		id: string
		private_key: string
		status: string
		validation_method: string
		domain_validation_options: #aws_acm_certificate_domain_validation_options
		subject_alternative_names: #aws_acm_certificate_subject_alternative_names
		tags: #aws_acm_certificate_tags
		tags_all: #aws_acm_certificate_tags_all
		validation_emails: #aws_acm_certificate_validation_emails
	}
	
	#aws_acm_certificate_domain_validation_options: [...#aws_acm_certificate_domain_validation_options_object]
	#aws_acm_certificate_domain_validation_options_object: {
		resource_record_name: string
		domain_name: string
		resource_record_type: string
		resource_record_value: string
	}
	#aws_acm_certificate_subject_alternative_names: [...string]
	#aws_acm_certificate_tags: [string]: string
	#aws_acm_certificate_tags_all: [string]: string
	#aws_acm_certificate_validation_emails: [...string]
	"""
