package res

#aws_sns_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sns_topic")
	application_failure_feedback_role_arn?:    string
	application_success_feedback_role_arn?:    string
	application_success_feedback_sample_rate?: number
	archive_policy?:                           string
	arn?:                                      string
	beginning_archive_time?:                   string
	content_based_deduplication?:              bool
	delivery_policy?:                          string
	display_name?:                             string
	fifo_topic?:                               bool
	firehose_failure_feedback_role_arn?:       string
	firehose_success_feedback_role_arn?:       string
	firehose_success_feedback_sample_rate?:    number
	http_failure_feedback_role_arn?:           string
	http_success_feedback_role_arn?:           string
	http_success_feedback_sample_rate?:        number
	id?:                                       string
	kms_master_key_id?:                        string
	lambda_failure_feedback_role_arn?:         string
	lambda_success_feedback_role_arn?:         string
	lambda_success_feedback_sample_rate?:      number
	name?:                                     string
	name_prefix?:                              string
	owner?:                                    string
	policy?:                                   string
	signature_version?:                        number
	sqs_failure_feedback_role_arn?:            string
	sqs_success_feedback_role_arn?:            string
	sqs_success_feedback_sample_rate?:         number
	tags?: [string]:     string
	tags_all?: [string]: string
	tracing_config?: string
}
