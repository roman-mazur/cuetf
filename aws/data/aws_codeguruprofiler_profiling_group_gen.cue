package data

#aws_codeguruprofiler_profiling_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codeguruprofiler_profiling_group")
	close({
		agent_orchestration_config?: [...close({
			profiling_enabled?: bool
		})]
		arn?:              string
		compute_platform?: string
		created_at?:       string
		id?:               string
		name!:             string
		profiling_status?: [...close({
			latest_agent_orchestrated_at?:     string
			latest_agent_profile_reported_at?: string
			latest_aggregated_profile?: [...close({
				period?: string
				start?:  string
			})]
		})]
		region?: string
		tags?: [string]: string
		updated_at?: string
	})
}
