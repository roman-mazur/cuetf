package res

#aws_network_interface_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_network_interface_attachment")
	close({
		attachment_id?: string
		device_index!:  number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		id?:                   string
		instance_id!:          string
		network_card_index?:   number
		network_interface_id!: string
		status?:               string
	})
}
