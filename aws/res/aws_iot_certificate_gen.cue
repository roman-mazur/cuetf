package res

#aws_iot_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_iot_certificate")
	close({
		active!: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		arn?:               string
		ca_certificate_id?: string
		ca_pem?:            string
		certificate_pem?:   string
		csr?:               string
		id?:                string
		private_key?:       string
		public_key?:        string
	})
}
