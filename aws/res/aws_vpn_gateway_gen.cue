package res

#aws_vpn_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpn_gateway")
	amazon_side_asn?:   string
	arn?:               string
	availability_zone?: string
	id?:                string
	tags?: [string]: string
	tags_all?: [string]: string
	vpc_id?: string
}
