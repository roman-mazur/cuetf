package res

#aws_opensearchserverless_security_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_opensearchserverless_security_policy")
	close({
		// Description of the policy. Typically used to store information
		// about the permissions defined in the policy.
		description?: string

		// Name of the policy.
		name!: string
		id?:   string

		// JSON policy document to use as the content for the new policy.
		policy!: string

		// Version of the policy.
		policy_version?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Type of security policy. One of `encryption` or `network`.
		type!: string
	})
}
