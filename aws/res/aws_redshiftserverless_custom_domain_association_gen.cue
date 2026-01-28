package res

#aws_redshiftserverless_custom_domain_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_redshiftserverless_custom_domain_association")
	close({
		custom_domain_certificate_arn!:         string
		custom_domain_certificate_expiry_time?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		custom_domain_name!: string
		id?:                 string
		workgroup_name!:     string
	})
}
