package res

#aws_ses_receipt_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ses_receipt_rule")
	close({
		after?: string
		add_header_action?: matchN(1, [#add_header_action, [...#add_header_action]])
		bounce_action?: matchN(1, [#bounce_action, [...#bounce_action]])
		lambda_action?: matchN(1, [#lambda_action, [...#lambda_action]])
		s3_action?: matchN(1, [#s3_action, [...#s3_action]])
		sns_action?: matchN(1, [#sns_action, [...#sns_action]])
		stop_action?: matchN(1, [#stop_action, [...#stop_action]])
		workmail_action?: matchN(1, [#workmail_action, [...#workmail_action]])
		arn?:     string
		enabled?: bool
		id?:      string
		name!:    string
		recipients?: [...string]
		region?:        string
		rule_set_name!: string
		scan_enabled?:  bool
		tls_policy?:    string
	})

	#add_header_action: close({
		header_name!:  string
		header_value!: string
		position!:     number
	})

	#bounce_action: close({
		message!:         string
		position!:        number
		sender!:          string
		smtp_reply_code!: string
		status_code?:     string
		topic_arn?:       string
	})

	#lambda_action: close({
		function_arn!:    string
		invocation_type?: string
		position!:        number
		topic_arn?:       string
	})

	#s3_action: close({
		bucket_name!:       string
		iam_role_arn?:      string
		kms_key_arn?:       string
		object_key_prefix?: string
		position!:          number
		topic_arn?:         string
	})

	#sns_action: close({
		encoding?:  string
		position!:  number
		topic_arn!: string
	})

	#stop_action: close({
		position!:  number
		scope!:     string
		topic_arn?: string
	})

	#workmail_action: close({
		organization_arn!: string
		position!:         number
		topic_arn?:        string
	})
}
