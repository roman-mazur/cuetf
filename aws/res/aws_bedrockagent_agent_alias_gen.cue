package res

#aws_bedrockagent_agent_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrockagent_agent_alias")
	close({
		agent_alias_arn?:  string
		timeouts?:         #timeouts
		agent_alias_id?:   string
		agent_alias_name!: string
		agent_id!:         string
		description?:      string
		id?:               string
		region?:           string
		routing_configuration?: [...close({
			agent_version?:          string
			provisioned_throughput?: string
		})]
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
