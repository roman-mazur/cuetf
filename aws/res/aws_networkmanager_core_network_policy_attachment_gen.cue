package res

#aws_networkmanager_core_network_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_core_network_policy_attachment")
	core_network_id!: string
	id?:              string
	policy_document!: string
	state?:           string
	timeouts?:        #timeouts

	#timeouts: update?: string
}
