package res

#aws_wafv2_web_acl_rule_group_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafv2_web_acl_rule_group_association")
	close({
		// Override action for the rule group. Valid values are 'none' and
		// 'count'. Defaults to 'none'.
		override_action?: string

		// Priority of the rule within the Web ACL.
		priority!: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Name of the rule to create in the Web ACL that references the
		// rule group.
		rule_name!: string

		// ARN of the Web ACL to associate the Rule Group with.
		web_acl_arn!: string
		managed_rule_group?: matchN(1, [#managed_rule_group, [...#managed_rule_group]])
		rule_group_reference?: matchN(1, [#rule_group_reference, [...#rule_group_reference]])
		timeouts?: #timeouts
	})

	#managed_rule_group: close({
		// Name of the managed rule group.
		name!: string
		rule_action_override?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override"]])

		// Name of the managed rule group vendor.
		vendor_name!: string

		// Version of the managed rule group. Omit this to use the default
		// version.
		version?: string
	})

	#rule_group_reference: close({
		rule_action_override?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override"]])

		// ARN of the Rule Group to associate with the Web ACL.
		arn!: string
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

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override": close({
		action_to_use?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use"]])

		// Name of the rule to override.
		name!: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use": close({
		allow?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/allow", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/allow"]])
		block?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/block", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/block"]])
		captcha?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/captcha", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/captcha"]])
		challenge?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/challenge", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/challenge"]])
		count?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/count", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/count"]])
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/allow": close({
		custom_request_handling?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/allow/$defs/custom_request_handling", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/allow/$defs/custom_request_handling"]])
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/allow/$defs/custom_request_handling": close({
		insert_header?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/allow/$defs/custom_request_handling/$defs/insert_header", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/allow/$defs/custom_request_handling/$defs/insert_header"]])
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/allow/$defs/custom_request_handling/$defs/insert_header": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/block": close({
		custom_response?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/block/$defs/custom_response", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/block/$defs/custom_response"]])
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/block/$defs/custom_response": close({
		response_header?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/block/$defs/custom_response/$defs/response_header", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/block/$defs/custom_response/$defs/response_header"]])
		custom_response_body_key?: string
		response_code!:            number
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/block/$defs/custom_response/$defs/response_header": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/captcha": close({
		custom_request_handling?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/captcha/$defs/custom_request_handling", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/captcha/$defs/custom_request_handling"]])
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/captcha/$defs/custom_request_handling": close({
		insert_header?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/captcha/$defs/custom_request_handling/$defs/insert_header", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/captcha/$defs/custom_request_handling/$defs/insert_header"]])
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/captcha/$defs/custom_request_handling/$defs/insert_header": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/challenge": close({
		custom_request_handling?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/challenge/$defs/custom_request_handling", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/challenge/$defs/custom_request_handling"]])
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/challenge/$defs/custom_request_handling": close({
		insert_header?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/challenge/$defs/custom_request_handling/$defs/insert_header", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/challenge/$defs/custom_request_handling/$defs/insert_header"]])
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/challenge/$defs/custom_request_handling/$defs/insert_header": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/count": close({
		custom_request_handling?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/count/$defs/custom_request_handling", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/count/$defs/custom_request_handling"]])
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/count/$defs/custom_request_handling": close({
		insert_header?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/count/$defs/custom_request_handling/$defs/insert_header", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/count/$defs/custom_request_handling/$defs/insert_header"]])
	})

	_#defs: "/$defs/managed_rule_group/$defs/rule_action_override/$defs/action_to_use/$defs/count/$defs/custom_request_handling/$defs/insert_header": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override": close({
		action_to_use?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use"]])

		// Name of the rule to override.
		name!: string
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use": close({
		allow?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/allow", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/allow"]])
		block?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/block", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/block"]])
		captcha?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/captcha", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/captcha"]])
		challenge?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/challenge", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/challenge"]])
		count?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/count", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/count"]])
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/allow": close({
		custom_request_handling?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/allow/$defs/custom_request_handling", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/allow/$defs/custom_request_handling"]])
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/allow/$defs/custom_request_handling": close({
		insert_header?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/allow/$defs/custom_request_handling/$defs/insert_header", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/allow/$defs/custom_request_handling/$defs/insert_header"]])
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/allow/$defs/custom_request_handling/$defs/insert_header": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/block": close({
		custom_response?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/block/$defs/custom_response", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/block/$defs/custom_response"]])
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/block/$defs/custom_response": close({
		response_header?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/block/$defs/custom_response/$defs/response_header", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/block/$defs/custom_response/$defs/response_header"]])
		custom_response_body_key?: string
		response_code!:            number
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/block/$defs/custom_response/$defs/response_header": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/captcha": close({
		custom_request_handling?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/captcha/$defs/custom_request_handling", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/captcha/$defs/custom_request_handling"]])
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/captcha/$defs/custom_request_handling": close({
		insert_header?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/captcha/$defs/custom_request_handling/$defs/insert_header", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/captcha/$defs/custom_request_handling/$defs/insert_header"]])
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/captcha/$defs/custom_request_handling/$defs/insert_header": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/challenge": close({
		custom_request_handling?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/challenge/$defs/custom_request_handling", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/challenge/$defs/custom_request_handling"]])
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/challenge/$defs/custom_request_handling": close({
		insert_header?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/challenge/$defs/custom_request_handling/$defs/insert_header", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/challenge/$defs/custom_request_handling/$defs/insert_header"]])
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/challenge/$defs/custom_request_handling/$defs/insert_header": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/count": close({
		custom_request_handling?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/count/$defs/custom_request_handling", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/count/$defs/custom_request_handling"]])
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/count/$defs/custom_request_handling": close({
		insert_header?: matchN(1, [_#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/count/$defs/custom_request_handling/$defs/insert_header", [..._#defs."/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/count/$defs/custom_request_handling/$defs/insert_header"]])
	})

	_#defs: "/$defs/rule_group_reference/$defs/rule_action_override/$defs/action_to_use/$defs/count/$defs/custom_request_handling/$defs/insert_header": close({
		name!:  string
		value!: string
	})
}
