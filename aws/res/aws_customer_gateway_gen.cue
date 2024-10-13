package res

#aws_customer_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_customer_gateway")
	arn?:              string
	bgp_asn?:          string
	bgp_asn_extended?: string
	certificate_arn?:  string
	device_name?:      string
	id?:               string
	ip_address?:       string
	tags?: [string]:     string
	tags_all?: [string]: string
	type!: string
}
