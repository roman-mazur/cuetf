package res

#aws_network_interface_sg_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_network_interface_sg_attachment")
	close({
		timeouts?:             #timeouts
		id?:                   string
		network_interface_id!: string
		region?:               string
		security_group_id!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
