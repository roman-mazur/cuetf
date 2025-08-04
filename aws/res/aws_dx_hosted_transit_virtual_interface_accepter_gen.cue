package res

#aws_dx_hosted_transit_virtual_interface_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dx_hosted_transit_virtual_interface_accepter")
	close({
		timeouts?:      #timeouts
		arn?:           string
		dx_gateway_id!: string
		id?:            string
		region?:        string
		tags?: [string]:     string
		tags_all?: [string]: string
		virtual_interface_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
