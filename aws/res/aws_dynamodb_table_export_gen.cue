package res

#aws_dynamodb_table_export: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dynamodb_table_export")
	arn?:                   string
	billed_size_in_bytes?:  number
	end_time?:              string
	export_format?:         string
	export_status?:         string
	export_time?:           string
	id?:                    string
	item_count?:            number
	manifest_files_s3_key?: string
	s3_bucket!:             string
	s3_bucket_owner?:       string
	s3_prefix?:             string
	s3_sse_algorithm?:      string
	s3_sse_kms_key_id?:     string
	start_time?:            string
	table_arn!:             string
	timeouts?:              #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
