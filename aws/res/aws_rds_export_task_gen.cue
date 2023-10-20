package res

#aws_rds_export_task: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_rds_export_task")
	export_only?: [...string]
	export_task_identifier: string
	failure_cause?:         string
	iam_role_arn:           string
	id?:                    string
	kms_key_id:             string
	percent_progress?:      number
	s3_bucket_name:         string
	s3_prefix?:             string
	snapshot_time?:         string
	source_arn:             string
	source_type?:           string
	status?:                string
	task_end_time?:         string
	task_start_time?:       string
	warning_message?:       string
	timeouts?:              #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
