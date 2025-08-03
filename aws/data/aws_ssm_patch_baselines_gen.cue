package data

#aws_ssm_patch_baselines: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssm_patch_baselines")
	close({
		baseline_identities?: [...close({
			baseline_description?: string
			baseline_id?:          string
			baseline_name?:        string
			default_baseline?:     bool
			operating_system?:     string
		})]
		default_baselines?: bool
		region?:            string
		filter?: matchN(1, [#filter, [...#filter]])
	})

	#filter: close({
		key!: string
		values!: [...string]
	})
}
