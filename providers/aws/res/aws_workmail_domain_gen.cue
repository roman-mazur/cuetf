package res

#aws_workmail_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_workmail_domain")
	close({
		// DKIM verification status for the domain.
		dkim_verification_status?: string

		// Mail domain name to register.
		domain_name!: string

		// Whether this domain is the default mail domain for the
		// organization.
		is_default?: bool

		// Whether this is the auto-provisioned test domain.
		is_test_domain?: bool

		// Identifier of the WorkMail organization.
		organization_id!: string

		// Domain ownership verification status.
		ownership_verification_status?: string
		records?: [...close({
			hostname?: string
			type?:     string
			value?:    string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
