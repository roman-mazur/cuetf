package data

#aws_customer_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_customer_gateway")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?:         #timeouts
		arn?:              string
		bgp_asn?:          number
		bgp_asn_extended?: number
		certificate_arn?:  string
		device_name?:      string
		id?:               string
		ip_address?:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
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
