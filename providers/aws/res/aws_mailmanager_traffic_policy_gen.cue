package res

aws_mailmanager_traffic_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_mailmanager_traffic_policy")
	close({
		policy_statement?: matchN(1, [#policy_statement, [...#policy_statement]])
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		created_timestamp?:      string
		default_action!:         string
		id?:                     string
		last_updated_timestamp?: string
		max_message_size_bytes?: number
		name!:                   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#policy_statement: close({
		condition?: matchN(1, [_#defs."/$defs/policy_statement/$defs/condition", [..._#defs."/$defs/policy_statement/$defs/condition"]])
		action!: string
	})

	_#defs: "/$defs/policy_statement/$defs/condition": close({
		boolean_expression?: matchN(1, [_#defs."/$defs/policy_statement/$defs/condition/$defs/boolean_expression", [..._#defs."/$defs/policy_statement/$defs/condition/$defs/boolean_expression"]])
		ip_expression?: matchN(1, [_#defs."/$defs/policy_statement/$defs/condition/$defs/ip_expression", [..._#defs."/$defs/policy_statement/$defs/condition/$defs/ip_expression"]])
		ipv6_expression?: matchN(1, [_#defs."/$defs/policy_statement/$defs/condition/$defs/ipv6_expression", [..._#defs."/$defs/policy_statement/$defs/condition/$defs/ipv6_expression"]])
		string_expression?: matchN(1, [_#defs."/$defs/policy_statement/$defs/condition/$defs/string_expression", [..._#defs."/$defs/policy_statement/$defs/condition/$defs/string_expression"]])
		tls_expression?: matchN(1, [_#defs."/$defs/policy_statement/$defs/condition/$defs/tls_expression", [..._#defs."/$defs/policy_statement/$defs/condition/$defs/tls_expression"]])
	})

	_#defs: "/$defs/policy_statement/$defs/condition/$defs/boolean_expression": close({
		evaluate?: matchN(1, [_#defs."/$defs/policy_statement/$defs/condition/$defs/boolean_expression/$defs/evaluate", [..._#defs."/$defs/policy_statement/$defs/condition/$defs/boolean_expression/$defs/evaluate"]])
		operator!: string
	})

	_#defs: "/$defs/policy_statement/$defs/condition/$defs/boolean_expression/$defs/evaluate": close({
		analysis?: matchN(1, [_#defs."/$defs/policy_statement/$defs/condition/$defs/boolean_expression/$defs/evaluate/$defs/analysis", [..._#defs."/$defs/policy_statement/$defs/condition/$defs/boolean_expression/$defs/evaluate/$defs/analysis"]])
		is_in_address_list?: matchN(1, [_#defs."/$defs/policy_statement/$defs/condition/$defs/boolean_expression/$defs/evaluate/$defs/is_in_address_list", [..._#defs."/$defs/policy_statement/$defs/condition/$defs/boolean_expression/$defs/evaluate/$defs/is_in_address_list"]])
	})

	_#defs: "/$defs/policy_statement/$defs/condition/$defs/boolean_expression/$defs/evaluate/$defs/analysis": close({
		analyzer!:     string
		result_field!: string
	})

	_#defs: "/$defs/policy_statement/$defs/condition/$defs/boolean_expression/$defs/evaluate/$defs/is_in_address_list": close({
		address_lists!: [...string]
		attribute!: string
	})

	_#defs: "/$defs/policy_statement/$defs/condition/$defs/ip_expression": close({
		evaluate?: matchN(1, [_#defs."/$defs/policy_statement/$defs/condition/$defs/ip_expression/$defs/evaluate", [..._#defs."/$defs/policy_statement/$defs/condition/$defs/ip_expression/$defs/evaluate"]])
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/policy_statement/$defs/condition/$defs/ip_expression/$defs/evaluate": close({
		attribute!: string
	})

	_#defs: "/$defs/policy_statement/$defs/condition/$defs/ipv6_expression": close({
		evaluate?: matchN(1, [_#defs."/$defs/policy_statement/$defs/condition/$defs/ipv6_expression/$defs/evaluate", [..._#defs."/$defs/policy_statement/$defs/condition/$defs/ipv6_expression/$defs/evaluate"]])
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/policy_statement/$defs/condition/$defs/ipv6_expression/$defs/evaluate": close({
		attribute!: string
	})

	_#defs: "/$defs/policy_statement/$defs/condition/$defs/string_expression": close({
		evaluate?: matchN(1, [_#defs."/$defs/policy_statement/$defs/condition/$defs/string_expression/$defs/evaluate", [..._#defs."/$defs/policy_statement/$defs/condition/$defs/string_expression/$defs/evaluate"]])
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/policy_statement/$defs/condition/$defs/string_expression/$defs/evaluate": close({
		analysis?: matchN(1, [_#defs."/$defs/policy_statement/$defs/condition/$defs/string_expression/$defs/evaluate/$defs/analysis", [..._#defs."/$defs/policy_statement/$defs/condition/$defs/string_expression/$defs/evaluate/$defs/analysis"]])
		attribute?: string
	})

	_#defs: "/$defs/policy_statement/$defs/condition/$defs/string_expression/$defs/evaluate/$defs/analysis": close({
		analyzer!:     string
		result_field!: string
	})

	_#defs: "/$defs/policy_statement/$defs/condition/$defs/tls_expression": close({
		evaluate?: matchN(1, [_#defs."/$defs/policy_statement/$defs/condition/$defs/tls_expression/$defs/evaluate", [..._#defs."/$defs/policy_statement/$defs/condition/$defs/tls_expression/$defs/evaluate"]])
		operator!: string
		value!:    string
	})

	_#defs: "/$defs/policy_statement/$defs/condition/$defs/tls_expression/$defs/evaluate": close({
		attribute!: string
	})
}
