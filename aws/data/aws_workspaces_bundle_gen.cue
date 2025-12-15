package data

#aws_workspaces_bundle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_workspaces_bundle")
	close({
		bundle_id?: string
		compute_type?: [...close({
			name?: string
		})]
		description?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		name?:   string
		owner?:  string
		root_storage?: [...close({
			capacity?: string
		})]
		user_storage?: [...close({
			capacity?: string
		})]
	})
}
