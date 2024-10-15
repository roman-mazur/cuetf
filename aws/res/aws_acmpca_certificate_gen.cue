package res

import "list"

#aws_acmpca_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_acmpca_certificate")
	api_passthrough?:             string
	arn?:                         string
	certificate?:                 string
	certificate_authority_arn!:   string
	certificate_chain?:           string
	certificate_signing_request!: string
	id?:                          string
	signing_algorithm!:           string
	template_arn?:                string
	validity?: #validity | list.MaxItems(1) & [_, ...] & [...#validity]

	#validity: {
		type!:  string
		value!: string
	}
}
