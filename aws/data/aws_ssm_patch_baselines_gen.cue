package data

#aws_ssm_patch_baselines: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ssm_patch_baselines")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		baseline_identities?: [...close({
			baseline_description?: string
			baseline_id?:          string
			baseline_name?:        string
			default_baseline?:     bool
			operating_system?:     string
		})]
		default_baselines?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#filter: close({
		key!: string
		values!: [...string]
	})
}
