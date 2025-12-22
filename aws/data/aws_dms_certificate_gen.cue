package data

#aws_dms_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_dms_certificate")
	close({
		certificate_arn?:           string
		certificate_creation_date?: string
		certificate_id!:            string
		certificate_owner?:         string
		certificate_pem?:           string
		certificate_wallet?:        string
		id?:                        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		key_length?:        number
		signing_algorithm?: string
		tags?: [string]: string
		valid_from_date?: string
		valid_to_date?:   string
	})
}
