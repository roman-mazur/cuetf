package data

#aws_sesv2_email_identity_mail_from_attributes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_sesv2_email_identity_mail_from_attributes")
	close({
		behavior_on_mx_failure?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		email_identity!:   string
		id?:               string
		mail_from_domain?: string
	})
}
