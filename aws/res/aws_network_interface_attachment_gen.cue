package res

#aws_network_interface_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_network_interface_attachment")
	close({
		attachment_id?:        string
		device_index!:         number
		id?:                   string
		instance_id!:          string
		network_interface_id!: string
		region?:               string
		status?:               string
	})
}
