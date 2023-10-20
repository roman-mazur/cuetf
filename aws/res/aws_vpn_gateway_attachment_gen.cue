package res

#aws_vpn_gateway_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpn_gateway_attachment")
	id?:            string
	vpc_id:         string
	vpn_gateway_id: string
}
