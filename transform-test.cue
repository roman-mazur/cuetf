package cuetf

testBlockAttr: #tBlockAttr & {input: main.resource_schemas.aws_acm_certificate.block.attributes, prefix: "aws_acm_certificate"}
testBlockAttr: output: {
		primitives: arn: type: "string"
		complex: domain_validation_options: type: "aws_acm_certificate_domain_validation_options"
		complexDefs: aws_acm_certificate_domain_validation_options: cueType: "list"
		complexDefs: aws_acm_certificate_domain_validation_options: element: "aws_acm_certificate_domain_validation_options_object"
		complexDefs: aws_acm_certificate_domain_validation_options_object: cueType: "struct"
		complexDefs: aws_acm_certificate_domain_validation_options_object: fields: resource_record_name: "string"
}
testBlockAttr: #validation: {
	primitives: length: len(testBlockAttr.output.primitives) & 9
	complex: length: len(testBlockAttr.output.complex) & 5
	complexDefs: length: len(testBlockAttr.output.complexDefs) & 6
}
