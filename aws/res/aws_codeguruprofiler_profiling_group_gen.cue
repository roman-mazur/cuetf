package res

#aws_codeguruprofiler_profiling_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codeguruprofiler_profiling_group")
	close({
		arn?: string
		agent_orchestration_config?: matchN(1, [#agent_orchestration_config, [...#agent_orchestration_config]])
		compute_platform?: string
		id?:               string
		name!:             string
		region?:           string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#agent_orchestration_config: close({
		profiling_enabled!: bool
	})
}
