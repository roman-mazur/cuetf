package res

#aws_bedrockagent_agent_collaborator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrockagent_agent_collaborator")
	close({
		agent_id!: string
		agent_descriptor?: matchN(1, [#agent_descriptor, [...#agent_descriptor]])
		timeouts?:                   #timeouts
		agent_version?:              string
		collaboration_instruction!:  string
		collaborator_id?:            string
		collaborator_name!:          string
		id?:                         string
		prepare_agent?:              bool
		region?:                     string
		relay_conversation_history?: string
	})

	#agent_descriptor: close({
		alias_arn!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
