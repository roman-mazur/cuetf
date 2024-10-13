package res

#aws_bedrockagent_agent_knowledge_base_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_bedrockagent_agent_knowledge_base_association")
	agent_id!:             string
	agent_version?:        string
	description!:          string
	id?:                   string
	knowledge_base_id!:    string
	knowledge_base_state!: string
	timeouts?:             #timeouts

	#timeouts: {
		create?: string
		update?: string
	}
}
