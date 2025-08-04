package data

#aws_ecr_pull_through_cache_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecr_pull_through_cache_rule")
	close({
		credential_arn?:        string
		custom_role_arn?:       string
		ecr_repository_prefix!: string
		id?:                    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		registry_id?:                string
		upstream_registry_url?:      string
		upstream_repository_prefix?: string
	})
}
