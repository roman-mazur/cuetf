package res

#aws_vpn_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpn_gateway")
	close({
		amazon_side_asn?:   string
		arn?:               string
		availability_zone?: string
		id?:                string
		region?:            string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id?: string
	})
}
