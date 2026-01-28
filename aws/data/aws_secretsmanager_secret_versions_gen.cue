package data

#aws_secretsmanager_secret_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_secretsmanager_secret_versions")
	close({
		arn?:                string
		include_deprecated?: bool
		name?:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:    string
		secret_id!: string
		versions?: [...close({
			created_time?:       string
			last_accessed_date?: string
			version_id?:         string
			version_stages?: [...string]
		})]
	})
}
