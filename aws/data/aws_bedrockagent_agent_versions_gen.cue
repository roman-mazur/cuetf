package data

#aws_bedrockagent_agent_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_bedrockagent_agent_versions")
	agent_id!: string
	agent_version_summaries?: #agent_version_summaries | [...#agent_version_summaries]

	#agent_version_summaries: {
		agent_name?:    string
		agent_status?:  string
		agent_version?: string
		created_at?:    string
		description?:   string
		updated_at?:    string
		guardrail_configuration?: #agent_version_summaries.#guardrail_configuration | [...#agent_version_summaries.#guardrail_configuration]

		#guardrail_configuration: {
			guardrail_identifier?: string
			guardrail_version?:    string
		}
	}
}
