package data

#aws_opensearchserverless_security_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearchserverless_security_policy")
	close({
		// The date the security policy was created.
		created_date?: string

		// Description of the security policy.
		description?: string

		// The date the security policy was last modified.
		last_modified_date?: string

		// Name of the policy.
		name!: string

		// The JSON policy document without any whitespaces.
		policy?: string
		id?:     string

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
