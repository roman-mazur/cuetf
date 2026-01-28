package data

#aws_rds_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_rds_certificate")
	close({
		arn?:                          string
		certificate_type?:             string
		customer_override?:            bool
		customer_override_valid_till?: string
		default_for_new_launches?:     bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		id?:                string
		latest_valid_till?: bool
		thumbprint?:        string
		valid_from?:        string
		valid_till?:        string
	})
}
