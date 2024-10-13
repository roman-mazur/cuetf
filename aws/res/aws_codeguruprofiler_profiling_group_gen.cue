package res

#aws_codeguruprofiler_profiling_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codeguruprofiler_profiling_group")
	arn?:              string
	compute_platform?: string
	id?:               string
	name!:             string
	tags?: [string]:     string
	tags_all?: [string]: string
	agent_orchestration_config?: #agent_orchestration_config | [...#agent_orchestration_config]

	#agent_orchestration_config: profiling_enabled!: bool
}
