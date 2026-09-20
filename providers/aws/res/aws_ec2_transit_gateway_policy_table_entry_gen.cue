package res

aws_ec2_transit_gateway_policy_table_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ec2_transit_gateway_policy_table_entry")
	close({
		policy_rule?: matchN(1, [#policy_rule, [...#policy_rule]])
		policy_rule_number!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                          string
		target_route_table_id!:           string
		transit_gateway_policy_table_id!: string
	})

	#policy_rule: close({
		metadata?: matchN(1, [_#defs."/$defs/policy_rule/$defs/metadata", [..._#defs."/$defs/policy_rule/$defs/metadata"]])
		destination_cidr_block?: string
		destination_port_range?: string
		protocol?:               string
		source_cidr_block?:      string
		source_port_range?:      string
	})

	_#defs: "/$defs/policy_rule/$defs/metadata": close({
		key?:   string
		value?: string
	})
}
