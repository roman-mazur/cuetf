package res

#aws_network_interface_sg_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_network_interface_sg_attachment")
	id?:                   string
	network_interface_id!: string
	security_group_id!:    string
	timeouts?:             #timeouts

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
	}
}
