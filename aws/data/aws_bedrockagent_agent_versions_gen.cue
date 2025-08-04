package data

#aws_bedrockagent_agent_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrockagent_agent_versions")
	close({
		agent_version_summaries?: matchN(1, [#agent_version_summaries, [...#agent_version_summaries]])
		agent_id!: string
		region?:   string
	})

	#agent_version_summaries: close({
		guardrail_configuration?: matchN(1, [_#defs."/$defs/agent_version_summaries/$defs/guardrail_configuration", [..._#defs."/$defs/agent_version_summaries/$defs/guardrail_configuration"]])
		agent_name?:    string
		agent_status?:  string
		agent_version?: string
		created_at?:    string
		description?:   string
		updated_at?:    string
	})

	_#defs: "/$defs/agent_version_summaries/$defs/guardrail_configuration": close({
		guardrail_identifier?: string
		guardrail_version?:    string
	})
}
