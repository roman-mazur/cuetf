package data

#aws_customer_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_customer_gateway")
	arn?:              string
	bgp_asn?:          number
	bgp_asn_extended?: number
	certificate_arn?:  string
	device_name?:      string
	id?:               string
	ip_address?:       string
	tags?: [string]: string
	type?: string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
