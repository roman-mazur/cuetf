package res

#aws_rds_export_task: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_export_task")
	close({
		export_only?: [...string]
		export_task_identifier!: string
		failure_cause?:          string
		iam_role_arn!:           string
		id?:                     string
		kms_key_id!:             string
		percent_progress?:       number
		region?:                 string
		s3_bucket_name!:         string
		s3_prefix?:              string
		snapshot_time?:          string
		source_arn!:             string
		timeouts?:               #timeouts
		source_type?:            string
		status?:                 string
		task_end_time?:          string
		task_start_time?:        string
		warning_message?:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
