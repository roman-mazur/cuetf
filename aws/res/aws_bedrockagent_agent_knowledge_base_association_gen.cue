package res

#aws_bedrockagent_agent_knowledge_base_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrockagent_agent_knowledge_base_association")
	close({
		timeouts?:             #timeouts
		agent_id!:             string
		agent_version?:        string
		description!:          string
		id?:                   string
		knowledge_base_id!:    string
		knowledge_base_state!: string
		region?:               string
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
