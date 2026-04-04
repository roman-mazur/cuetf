package res

#aws_ec2_transit_gateway_metering_policy_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ec2_transit_gateway_metering_policy_entry")
	close({
		timeouts?:                                    #timeouts
		destination_cidr_block?:                      string
		destination_port_range?:                      string
		destination_transit_gateway_attachment_id?:   string
		destination_transit_gateway_attachment_type?: string
		metered_account!:                             string
		policy_rule_number!:                          number
		protocol?:                                    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                                 string
		source_cidr_block?:                      string
		source_port_range?:                      string
		source_transit_gateway_attachment_id?:   string
		source_transit_gateway_attachment_type?: string
		transit_gateway_metering_policy_id!:     string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string
	})
}
