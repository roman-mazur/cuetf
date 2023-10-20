package res

#aws_ses_receipt_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ses_receipt_rule")
	after?:   string
	arn?:     string
	enabled?: bool
	id?:      string
	name:     string
	recipients?: [...string]
	rule_set_name:      string
	scan_enabled?:      bool
	tls_policy?:        string
	add_header_action?: #add_header_action | [...#add_header_action]
	bounce_action?:     #bounce_action | [...#bounce_action]
	lambda_action?:     #lambda_action | [...#lambda_action]
	s3_action?:         #s3_action | [...#s3_action]
	sns_action?:        #sns_action | [...#sns_action]
	stop_action?:       #stop_action | [...#stop_action]
	workmail_action?:   #workmail_action | [...#workmail_action]

	#add_header_action: {
		header_name:  string
		header_value: string
		position:     number
	}

	#bounce_action: {
		message:         string
		position:        number
		sender:          string
		smtp_reply_code: string
		status_code?:    string
		topic_arn?:      string
	}

	#lambda_action: {
		function_arn:     string
		invocation_type?: string
		position:         number
		topic_arn?:       string
	}

	#s3_action: {
		bucket_name:        string
		kms_key_arn?:       string
		object_key_prefix?: string
		position:           number
		topic_arn?:         string
	}

	#sns_action: {
		encoding?: string
		position:  number
		topic_arn: string
	}

	#stop_action: {
		position:   number
		scope:      string
		topic_arn?: string
	}

	#workmail_action: {
		organization_arn: string
		position:         number
		topic_arn?:       string
	}
}
