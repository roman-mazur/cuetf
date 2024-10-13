package res

#aws_dx_hosted_private_virtual_interface_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dx_hosted_private_virtual_interface_accepter")
	arn?:           string
	dx_gateway_id?: string
	id?:            string
	tags?: [string]:     string
	tags_all?: [string]: string
	virtual_interface_id!: string
	vpn_gateway_id?:       string
	timeouts?:             #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
