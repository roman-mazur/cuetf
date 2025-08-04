package res

#aws_codeartifact_repository_permissions_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codeartifact_repository_permissions_policy")
	close({
		domain!:       string
		domain_owner?: string
		id?:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		policy_document!: string
		policy_revision?: string
		repository!:      string
		resource_arn?:    string
	})
}
