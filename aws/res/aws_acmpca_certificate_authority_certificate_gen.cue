package res

#aws_acmpca_certificate_authority_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_acmpca_certificate_authority_certificate")
	close({
		certificate!:               string
		certificate_authority_arn!: string
		certificate_chain?:         string
		id?:                        string
		region?:                    string
	})
}
