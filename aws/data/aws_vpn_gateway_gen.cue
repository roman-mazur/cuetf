package data

#aws_vpn_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpn_gateway")
	amazon_side_asn?:   string
	arn?:               string
	attached_vpc_id?:   string
	availability_zone?: string
	id?:                string
	state?:             string
	tags?: [string]: string
	filter?:   #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
