package data

#aws_customer_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_customer_gateway")
	close({
		arn?:              string
		bgp_asn?:          number
		bgp_asn_extended?: number
		certificate_arn?:  string
		device_name?:      string
		id?:               string
		ip_address?:       string
		filter?: matchN(1, [#filter, [...#filter]])
		region?:   string
		timeouts?: #timeouts
		tags?: [string]: string
		type?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
