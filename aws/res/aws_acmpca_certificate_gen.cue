package res

import "list"

#aws_acmpca_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_acmpca_certificate")
	close({
		api_passthrough?:           string
		arn?:                       string
		certificate?:               string
		certificate_authority_arn!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                      string
		certificate_chain?:           string
		certificate_signing_request!: string
		validity!: matchN(1, [#validity, list.MaxItems(1) & [_, ...] & [...#validity]])
		id?:                string
		signing_algorithm!: string
		template_arn?:      string
	})

	#validity: close({
		type!:  string
		value!: string
	})
}
