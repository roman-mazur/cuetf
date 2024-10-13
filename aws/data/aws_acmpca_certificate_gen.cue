package data

#aws_acmpca_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_acmpca_certificate")
	arn!:                       string
	certificate?:               string
	certificate_authority_arn!: string
	certificate_chain?:         string
	id?:                        string
}
