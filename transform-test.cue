package cuetf

testBlockAttr: #tBlockAttr & {input: main.resource_schemas.aws_acm_certificate.block.attributes, prefix: "aws_acm_certificate"}
testBlockAttr: output: {
	primitives: arn: type:                                                      "string"
	complex: domain_validation_options: type:                                   "aws_acm_certificate_domain_validation_options"
	complexDefs: aws_acm_certificate_domain_validation_options: cueType:        "list"
	complexDefs: aws_acm_certificate_domain_validation_options: element:        "aws_acm_certificate_domain_validation_options_object"
	complexDefs: aws_acm_certificate_domain_validation_options_object: cueType: "struct"
	complexDefs: aws_acm_certificate_domain_validation_options_object: fields: resource_record_name: "string"
}
testBlockAttr: #validation: {
	primitives: length:  len(testBlockAttr.output.primitives) & 9
	complex: length:     len(testBlockAttr.output.complex) & 5
	complexDefs: length: len(testBlockAttr.output.complexDefs) & 6
}

testBlockAttr: code: """
	#aws_acm_certificate: {
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
