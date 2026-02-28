package res

#aws_wafv2_web_acl_rule_group_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_wafv2_web_acl_rule_group_association")
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
		managed_rule_group?: matchN(1, [#managed_rule_group, [...#managed_rule_group]])
		rule_group_reference?: matchN(1, [#rule_group_reference, [...#rule_group_reference]])

		// ARN of the Web ACL to associate the Rule Group with.
		web_acl_arn!: string
		timeouts?:    #timeouts
		visibility_config?: matchN(1, [#visibility_config, [...#visibility_config]])
	})

	#managed_rule_group: close({
		// Name of the managed rule group.
		name!: string

		// Name of the managed rule group vendor.
		vendor_name!: string
		managed_rule_group_configs?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs"]])

		// Version of the managed rule group. Omit this to use the default
		// version.
		version?: string
		rule_action_override?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/rule_action_override", [..._#defs."/$defs/managed_rule_group/$defs/rule_action_override"]])
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

	#visibility_config: close({
		// Indicates whether the rule is available for use in the metrics
		// for the web ACL.
		cloudwatch_metrics_enabled!: bool

		// A name for the metrics for this rule.
		metric_name!: string

		// Indicates whether to store a sampling of the web requests that
		// match the rule.
		sampled_requests_enabled!: bool
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs": close({
		aws_managed_rules_acfp_rule_set?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set"]])
		aws_managed_rules_anti_ddos_rule_set?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_anti_ddos_rule_set", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_anti_ddos_rule_set"]])
		aws_managed_rules_atp_rule_set?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set"]])
		aws_managed_rules_bot_control_rule_set?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_bot_control_rule_set", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_bot_control_rule_set"]])
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set": close({
		request_inspection?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection"]])
		response_inspection?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/response_inspection", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/response_inspection"]])

		// Path to the account creation endpoint on the protected website
		creation_path!:          string
		enable_regex_in_path?:   bool
		registration_page_path!: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection": close({
		address_fields?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection/$defs/address_fields", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection/$defs/address_fields"]])
		email_field?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection/$defs/email_field", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection/$defs/email_field"]])
		password_field?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection/$defs/password_field", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection/$defs/password_field"]])
		phone_number_fields?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection/$defs/phone_number_fields", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection/$defs/phone_number_fields"]])
		username_field?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection/$defs/username_field", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection/$defs/username_field"]])

		// Payload type for inspection, either JSON or FORM_ENCODED.
		payload_type!: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection/$defs/address_fields": close({
		// Identifiers of the address fields
		identifiers!: [...string]
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection/$defs/email_field": close({
		// Identifier of the email field
		identifier!: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection/$defs/password_field": close({
		// Identifier of the password field
		identifier!: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection/$defs/phone_number_fields": close({
		// Identifiers of the phone number fields
		identifiers!: [...string]
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/request_inspection/$defs/username_field": close({
		// Identifier of the username field
		identifier!: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/response_inspection": close({
		body_contains?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/response_inspection/$defs/body_contains", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/response_inspection/$defs/body_contains"]])
		header?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/response_inspection/$defs/header", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/response_inspection/$defs/header"]])
		json?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/response_inspection/$defs/json", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/response_inspection/$defs/json"]])
		status_code?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/response_inspection/$defs/status_code", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/response_inspection/$defs/status_code"]])
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/response_inspection/$defs/body_contains": close({
		// Strings that indicate a failed login or account creation
		// attempt
		failure_strings!: [...string]

		// Strings that indicate a successful login or account creation
		// attempt
		success_strings!: [...string]
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/response_inspection/$defs/header": close({
		// Strings that indicate a failed login or account creation
		// attempt
		failure_values!: [...string]

		// Name of the HTTP header to inspect
		name!: string

		// Strings that indicate a successful login or account creation
		// attempt
		success_values!: [...string]
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/response_inspection/$defs/json": close({
		// Strings that indicate a failed login or account creation
		// attempt
		failure_values!: [...string]

		// Identifier of the JSON field to inspect
		identifier!: string

		// Strings that indicate a successful login or account creation
		// attempt
		success_values!: [...string]
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_acfp_rule_set/$defs/response_inspection/$defs/status_code": close({
		// Status codes that indicate a failed login or account creation
		// attempt
		failure_codes!: [...number]

		// Status codes that indicate a successful login or account
		// creation attempt
		success_codes!: [...number]
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_anti_ddos_rule_set": close({
		client_side_action_config?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_anti_ddos_rule_set/$defs/client_side_action_config", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_anti_ddos_rule_set/$defs/client_side_action_config"]])
		sensitivity_to_block?: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_anti_ddos_rule_set/$defs/client_side_action_config": close({
		challenge?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_anti_ddos_rule_set/$defs/client_side_action_config/$defs/challenge", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_anti_ddos_rule_set/$defs/client_side_action_config/$defs/challenge"]])
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_anti_ddos_rule_set/$defs/client_side_action_config/$defs/challenge": close({
		exempt_uri_regular_expression?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_anti_ddos_rule_set/$defs/client_side_action_config/$defs/challenge/$defs/exempt_uri_regular_expression", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_anti_ddos_rule_set/$defs/client_side_action_config/$defs/challenge/$defs/exempt_uri_regular_expression"]])
		sensitivity?:     string
		usage_of_action!: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_anti_ddos_rule_set/$defs/client_side_action_config/$defs/challenge/$defs/exempt_uri_regular_expression": close({
		regex_string?: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set": close({
		request_inspection?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/request_inspection", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/request_inspection"]])
		response_inspection?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/response_inspection", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/response_inspection"]])
		enable_regex_in_path?: bool
		login_path!:           string
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/request_inspection": close({
		password_field?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/request_inspection/$defs/password_field", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/request_inspection/$defs/password_field"]])
		username_field?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/request_inspection/$defs/username_field", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/request_inspection/$defs/username_field"]])

		// Payload type for inspection, either JSON or FORM_ENCODED.
		payload_type!: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/request_inspection/$defs/password_field": close({
		// Identifier of the password field
		identifier!: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/request_inspection/$defs/username_field": close({
		// Identifier of the username field
		identifier!: string
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/response_inspection": close({
		body_contains?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/response_inspection/$defs/body_contains", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/response_inspection/$defs/body_contains"]])
		header?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/response_inspection/$defs/header", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/response_inspection/$defs/header"]])
		json?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/response_inspection/$defs/json", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/response_inspection/$defs/json"]])
		status_code?: matchN(1, [_#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/response_inspection/$defs/status_code", [..._#defs."/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/response_inspection/$defs/status_code"]])
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/response_inspection/$defs/body_contains": close({
		// Strings that indicate a failed login or account creation
		// attempt
		failure_strings!: [...string]

		// Strings that indicate a successful login or account creation
		// attempt
		success_strings!: [...string]
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/response_inspection/$defs/header": close({
		// Strings that indicate a failed login or account creation
		// attempt
		failure_values!: [...string]

		// Name of the HTTP header to inspect
		name!: string

		// Strings that indicate a successful login or account creation
		// attempt
		success_values!: [...string]
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/response_inspection/$defs/json": close({
		// Strings that indicate a failed login or account creation
		// attempt
		failure_values!: [...string]

		// Identifier of the JSON field to inspect
		identifier!: string

		// Strings that indicate a successful login or account creation
		// attempt
		success_values!: [...string]
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_atp_rule_set/$defs/response_inspection/$defs/status_code": close({
		// Status codes that indicate a failed login or account creation
		// attempt
		failure_codes!: [...number]

		// Status codes that indicate a successful login or account
		// creation attempt
		success_codes!: [...number]
	})

	_#defs: "/$defs/managed_rule_group/$defs/managed_rule_group_configs/$defs/aws_managed_rules_bot_control_rule_set": close({
		enable_machine_learning?: bool
		inspection_level!:        string
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
