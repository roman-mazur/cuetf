package res

#aws_networkmanager_attachment_routing_policy_label: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networkmanager_attachment_routing_policy_label")
	close({
		attachment_id!:        string
		core_network_id!:      string
		routing_policy_label!: string
	})
}
