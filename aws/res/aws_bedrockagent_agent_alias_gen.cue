package res

#aws_bedrockagent_agent_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_bedrockagent_agent_alias")
	agent_alias_arn?:  string
	agent_alias_id?:   string
	agent_alias_name!: string
	agent_id!:         string
	description?:      string
	id?:               string
	routing_configuration?: [...{
		agent_version?:          string
		provisioned_throughput?: string
	}]
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
