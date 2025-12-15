package data

#aws_codeguruprofiler_profiling_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_codeguruprofiler_profiling_group")
	close({
		agent_orchestration_config?: [...close({
			profiling_enabled?: bool
		})]
		arn?:              string
		compute_platform?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		created_at?: string
		id?:         string
		name!:       string
		profiling_status?: [...close({
			latest_agent_orchestrated_at?:     string
			latest_agent_profile_reported_at?: string
			latest_aggregated_profile?: [...close({
				period?: string
				start?:  string
			})]
		})]
		tags?: [string]: string
		updated_at?: string
	})
}
