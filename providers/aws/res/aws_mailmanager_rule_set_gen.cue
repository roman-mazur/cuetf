package res

aws_mailmanager_rule_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_mailmanager_rule_set")
	close({
		rule?: matchN(1, [#rule, [...#rule]])
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		created_date?:           string
		id?:                     string
		last_modification_date?: string
		name!:                   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#rule: close({
		action?: matchN(1, [_#defs."/$defs/rule/$defs/action", [..._#defs."/$defs/rule/$defs/action"]])
		condition?: matchN(1, [_#defs."/$defs/rule/$defs/condition", [..._#defs."/$defs/rule/$defs/condition"]])
		unless?: matchN(1, [_#defs."/$defs/rule/$defs/unless", [..._#defs."/$defs/rule/$defs/unless"]])
		name?: string
	})

	_#defs: "/$defs/rule/$defs/action": close({
		add_header?: matchN(1, [_#defs."/$defs/rule/$defs/action/$defs/add_header", [..._#defs."/$defs/rule/$defs/action/$defs/add_header"]])
		archive?: matchN(1, [_#defs."/$defs/rule/$defs/action/$defs/archive", [..._#defs."/$defs/rule/$defs/action/$defs/archive"]])
		bounce?: matchN(1, [_#defs."/$defs/rule/$defs/action/$defs/bounce", [..._#defs."/$defs/rule/$defs/action/$defs/bounce"]])
		deliver_to_mailbox?: matchN(1, [_#defs."/$defs/rule/$defs/action/$defs/deliver_to_mailbox", [..._#defs."/$defs/rule/$defs/action/$defs/deliver_to_mailbox"]])
		deliver_to_q_business?: matchN(1, [_#defs."/$defs/rule/$defs/action/$defs/deliver_to_q_business", [..._#defs."/$defs/rule/$defs/action/$defs/deliver_to_q_business"]])
		drop?: matchN(1, [_#defs."/$defs/rule/$defs/action/$defs/drop", [..._#defs."/$defs/rule/$defs/action/$defs/drop"]])
		invoke_lambda?: matchN(1, [_#defs."/$defs/rule/$defs/action/$defs/invoke_lambda", [..._#defs."/$defs/rule/$defs/action/$defs/invoke_lambda"]])
		publish_to_sns?: matchN(1, [_#defs."/$defs/rule/$defs/action/$defs/publish_to_sns", [..._#defs."/$defs/rule/$defs/action/$defs/publish_to_sns"]])
		relay?: matchN(1, [_#defs."/$defs/rule/$defs/action/$defs/relay", [..._#defs."/$defs/rule/$defs/action/$defs/relay"]])
		replace_recipient?: matchN(1, [_#defs."/$defs/rule/$defs/action/$defs/replace_recipient", [..._#defs."/$defs/rule/$defs/action/$defs/replace_recipient"]])
		send?: matchN(1, [_#defs."/$defs/rule/$defs/action/$defs/send", [..._#defs."/$defs/rule/$defs/action/$defs/send"]])
		write_to_s3?: matchN(1, [_#defs."/$defs/rule/$defs/action/$defs/write_to_s3", [..._#defs."/$defs/rule/$defs/action/$defs/write_to_s3"]])
	})

	_#defs: "/$defs/rule/$defs/action/$defs/add_header": close({
		header_name!:  string
		header_value!: string
	})

	_#defs: "/$defs/rule/$defs/action/$defs/archive": close({
		action_failure_policy?: string
		target_archive!:        string
	})

	_#defs: "/$defs/rule/$defs/action/$defs/bounce": close({
		action_failure_policy?: string
		diagnostic_message!:    string
		message?:               string
		role_arn!:              string
		sender!:                string
		smtp_reply_code!:       string
		status_code!:           string
	})

	_#defs: "/$defs/rule/$defs/action/$defs/deliver_to_mailbox": close({
		action_failure_policy?: string
		mailbox_arn!:           string
		role_arn!:              string
	})

	_#defs: "/$defs/rule/$defs/action/$defs/deliver_to_q_business": close({
		action_failure_policy?: string
		application_id!:        string
		index_id!:              string
		role_arn!:              string
	})

	_#defs: "/$defs/rule/$defs/action/$defs/drop": close({})

	_#defs: "/$defs/rule/$defs/action/$defs/invoke_lambda": close({
		action_failure_policy?: string
		function_arn!:          string
		invocation_type!:       string
		retry_time_minutes?:    number
		role_arn!:              string
	})

	_#defs: "/$defs/rule/$defs/action/$defs/publish_to_sns": close({
		action_failure_policy?: string
		encoding?:              string
		payload_type?:          string
		role_arn!:              string
		topic_arn!:             string
	})

	_#defs: "/$defs/rule/$defs/action/$defs/relay": close({
		action_failure_policy?: string
		mail_from?:             string
		relay!:                 string
	})

	_#defs: "/$defs/rule/$defs/action/$defs/replace_recipient": close({
		replace_with?: [...string]
	})

	_#defs: "/$defs/rule/$defs/action/$defs/send": close({
		action_failure_policy?: string
		role_arn!:              string
	})

	_#defs: "/$defs/rule/$defs/action/$defs/write_to_s3": close({
		action_failure_policy?: string
		role_arn!:              string
		s3_bucket!:             string
		s3_prefix?:             string
		s3_sse_kms_key_id?:     string
	})

	_#defs: "/$defs/rule/$defs/condition": close({
		boolean_expression?: matchN(1, [_#defs."/$defs/rule/$defs/condition/$defs/boolean_expression", [..._#defs."/$defs/rule/$defs/condition/$defs/boolean_expression"]])
		dmarc_expression?: matchN(1, [_#defs."/$defs/rule/$defs/condition/$defs/dmarc_expression", [..._#defs."/$defs/rule/$defs/condition/$defs/dmarc_expression"]])
		ip_expression?: matchN(1, [_#defs."/$defs/rule/$defs/condition/$defs/ip_expression", [..._#defs."/$defs/rule/$defs/condition/$defs/ip_expression"]])
		number_expression?: matchN(1, [_#defs."/$defs/rule/$defs/condition/$defs/number_expression", [..._#defs."/$defs/rule/$defs/condition/$defs/number_expression"]])
		string_expression?: matchN(1, [_#defs."/$defs/rule/$defs/condition/$defs/string_expression", [..._#defs."/$defs/rule/$defs/condition/$defs/string_expression"]])
		verdict_expression?: matchN(1, [_#defs."/$defs/rule/$defs/condition/$defs/verdict_expression", [..._#defs."/$defs/rule/$defs/condition/$defs/verdict_expression"]])
	})

	_#defs: "/$defs/rule/$defs/condition/$defs/boolean_expression": close({
		evaluate?: matchN(1, [_#defs."/$defs/rule/$defs/condition/$defs/boolean_expression/$defs/evaluate", [..._#defs."/$defs/rule/$defs/condition/$defs/boolean_expression/$defs/evaluate"]])
		operator!: string
	})

	_#defs: "/$defs/rule/$defs/condition/$defs/boolean_expression/$defs/evaluate": close({
		analysis?: matchN(1, [_#defs."/$defs/rule/$defs/condition/$defs/boolean_expression/$defs/evaluate/$defs/analysis", [..._#defs."/$defs/rule/$defs/condition/$defs/boolean_expression/$defs/evaluate/$defs/analysis"]])
		is_in_address_list?: matchN(1, [_#defs."/$defs/rule/$defs/condition/$defs/boolean_expression/$defs/evaluate/$defs/is_in_address_list", [..._#defs."/$defs/rule/$defs/condition/$defs/boolean_expression/$defs/evaluate/$defs/is_in_address_list"]])
		attribute?: string
	})

	_#defs: "/$defs/rule/$defs/condition/$defs/boolean_expression/$defs/evaluate/$defs/analysis": close({
		analyzer!:     string
		result_field!: string
	})

	_#defs: "/$defs/rule/$defs/condition/$defs/boolean_expression/$defs/evaluate/$defs/is_in_address_list": close({
		address_lists!: [...string]
		attribute!: string
	})

	_#defs: "/$defs/rule/$defs/condition/$defs/dmarc_expression": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/rule/$defs/condition/$defs/ip_expression": close({
		evaluate?: matchN(1, [_#defs."/$defs/rule/$defs/condition/$defs/ip_expression/$defs/evaluate", [..._#defs."/$defs/rule/$defs/condition/$defs/ip_expression/$defs/evaluate"]])
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/rule/$defs/condition/$defs/ip_expression/$defs/evaluate": close({
		attribute!: string
	})

	_#defs: "/$defs/rule/$defs/condition/$defs/number_expression": close({
		evaluate?: matchN(1, [_#defs."/$defs/rule/$defs/condition/$defs/number_expression/$defs/evaluate", [..._#defs."/$defs/rule/$defs/condition/$defs/number_expression/$defs/evaluate"]])
		operator!: string
		value!:    number
	})

	_#defs: "/$defs/rule/$defs/condition/$defs/number_expression/$defs/evaluate": close({
		attribute!: string
	})

	_#defs: "/$defs/rule/$defs/condition/$defs/string_expression": close({
		evaluate?: matchN(1, [_#defs."/$defs/rule/$defs/condition/$defs/string_expression/$defs/evaluate", [..._#defs."/$defs/rule/$defs/condition/$defs/string_expression/$defs/evaluate"]])
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/rule/$defs/condition/$defs/string_expression/$defs/evaluate": close({
		analysis?: matchN(1, [_#defs."/$defs/rule/$defs/condition/$defs/string_expression/$defs/evaluate/$defs/analysis", [..._#defs."/$defs/rule/$defs/condition/$defs/string_expression/$defs/evaluate/$defs/analysis"]])
		attribute?:                    string
		client_certificate_attribute?: string
		mime_header_attribute?:        string
	})

	_#defs: "/$defs/rule/$defs/condition/$defs/string_expression/$defs/evaluate/$defs/analysis": close({
		analyzer!:     string
		result_field!: string
	})

	_#defs: "/$defs/rule/$defs/condition/$defs/verdict_expression": close({
		evaluate?: matchN(1, [_#defs."/$defs/rule/$defs/condition/$defs/verdict_expression/$defs/evaluate", [..._#defs."/$defs/rule/$defs/condition/$defs/verdict_expression/$defs/evaluate"]])
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/rule/$defs/condition/$defs/verdict_expression/$defs/evaluate": close({
		analysis?: matchN(1, [_#defs."/$defs/rule/$defs/condition/$defs/verdict_expression/$defs/evaluate/$defs/analysis", [..._#defs."/$defs/rule/$defs/condition/$defs/verdict_expression/$defs/evaluate/$defs/analysis"]])
		attribute?: string
	})

	_#defs: "/$defs/rule/$defs/condition/$defs/verdict_expression/$defs/evaluate/$defs/analysis": close({
		analyzer!:     string
		result_field!: string
	})

	_#defs: "/$defs/rule/$defs/unless": close({
		boolean_expression?: matchN(1, [_#defs."/$defs/rule/$defs/unless/$defs/boolean_expression", [..._#defs."/$defs/rule/$defs/unless/$defs/boolean_expression"]])
		dmarc_expression?: matchN(1, [_#defs."/$defs/rule/$defs/unless/$defs/dmarc_expression", [..._#defs."/$defs/rule/$defs/unless/$defs/dmarc_expression"]])
		ip_expression?: matchN(1, [_#defs."/$defs/rule/$defs/unless/$defs/ip_expression", [..._#defs."/$defs/rule/$defs/unless/$defs/ip_expression"]])
		number_expression?: matchN(1, [_#defs."/$defs/rule/$defs/unless/$defs/number_expression", [..._#defs."/$defs/rule/$defs/unless/$defs/number_expression"]])
		string_expression?: matchN(1, [_#defs."/$defs/rule/$defs/unless/$defs/string_expression", [..._#defs."/$defs/rule/$defs/unless/$defs/string_expression"]])
		verdict_expression?: matchN(1, [_#defs."/$defs/rule/$defs/unless/$defs/verdict_expression", [..._#defs."/$defs/rule/$defs/unless/$defs/verdict_expression"]])
	})

	_#defs: "/$defs/rule/$defs/unless/$defs/boolean_expression": close({
		evaluate?: matchN(1, [_#defs."/$defs/rule/$defs/unless/$defs/boolean_expression/$defs/evaluate", [..._#defs."/$defs/rule/$defs/unless/$defs/boolean_expression/$defs/evaluate"]])
		operator!: string
	})

	_#defs: "/$defs/rule/$defs/unless/$defs/boolean_expression/$defs/evaluate": close({
		analysis?: matchN(1, [_#defs."/$defs/rule/$defs/unless/$defs/boolean_expression/$defs/evaluate/$defs/analysis", [..._#defs."/$defs/rule/$defs/unless/$defs/boolean_expression/$defs/evaluate/$defs/analysis"]])
		is_in_address_list?: matchN(1, [_#defs."/$defs/rule/$defs/unless/$defs/boolean_expression/$defs/evaluate/$defs/is_in_address_list", [..._#defs."/$defs/rule/$defs/unless/$defs/boolean_expression/$defs/evaluate/$defs/is_in_address_list"]])
		attribute?: string
	})

	_#defs: "/$defs/rule/$defs/unless/$defs/boolean_expression/$defs/evaluate/$defs/analysis": close({
		analyzer!:     string
		result_field!: string
	})

	_#defs: "/$defs/rule/$defs/unless/$defs/boolean_expression/$defs/evaluate/$defs/is_in_address_list": close({
		address_lists!: [...string]
		attribute!: string
	})

	_#defs: "/$defs/rule/$defs/unless/$defs/dmarc_expression": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/rule/$defs/unless/$defs/ip_expression": close({
		evaluate?: matchN(1, [_#defs."/$defs/rule/$defs/unless/$defs/ip_expression/$defs/evaluate", [..._#defs."/$defs/rule/$defs/unless/$defs/ip_expression/$defs/evaluate"]])
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/rule/$defs/unless/$defs/ip_expression/$defs/evaluate": close({
		attribute!: string
	})

	_#defs: "/$defs/rule/$defs/unless/$defs/number_expression": close({
		evaluate?: matchN(1, [_#defs."/$defs/rule/$defs/unless/$defs/number_expression/$defs/evaluate", [..._#defs."/$defs/rule/$defs/unless/$defs/number_expression/$defs/evaluate"]])
		operator!: string
		value!:    number
	})

	_#defs: "/$defs/rule/$defs/unless/$defs/number_expression/$defs/evaluate": close({
		attribute!: string
	})

	_#defs: "/$defs/rule/$defs/unless/$defs/string_expression": close({
		evaluate?: matchN(1, [_#defs."/$defs/rule/$defs/unless/$defs/string_expression/$defs/evaluate", [..._#defs."/$defs/rule/$defs/unless/$defs/string_expression/$defs/evaluate"]])
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/rule/$defs/unless/$defs/string_expression/$defs/evaluate": close({
		analysis?: matchN(1, [_#defs."/$defs/rule/$defs/unless/$defs/string_expression/$defs/evaluate/$defs/analysis", [..._#defs."/$defs/rule/$defs/unless/$defs/string_expression/$defs/evaluate/$defs/analysis"]])
		attribute?:                    string
		client_certificate_attribute?: string
		mime_header_attribute?:        string
	})

	_#defs: "/$defs/rule/$defs/unless/$defs/string_expression/$defs/evaluate/$defs/analysis": close({
		analyzer!:     string
		result_field!: string
	})

	_#defs: "/$defs/rule/$defs/unless/$defs/verdict_expression": close({
		evaluate?: matchN(1, [_#defs."/$defs/rule/$defs/unless/$defs/verdict_expression/$defs/evaluate", [..._#defs."/$defs/rule/$defs/unless/$defs/verdict_expression/$defs/evaluate"]])
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/rule/$defs/unless/$defs/verdict_expression/$defs/evaluate": close({
		analysis?: matchN(1, [_#defs."/$defs/rule/$defs/unless/$defs/verdict_expression/$defs/evaluate/$defs/analysis", [..._#defs."/$defs/rule/$defs/unless/$defs/verdict_expression/$defs/evaluate/$defs/analysis"]])
		attribute?: string
	})

	_#defs: "/$defs/rule/$defs/unless/$defs/verdict_expression/$defs/evaluate/$defs/analysis": close({
		analyzer!:     string
		result_field!: string
	})
}
