package res

#aws_dx_hosted_public_virtual_interface_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dx_hosted_public_virtual_interface_accepter")
	close({
		arn?:      string
		timeouts?: #timeouts
		id?:       string
		region?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		virtual_interface_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
