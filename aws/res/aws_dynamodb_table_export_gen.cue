package res

import "list"

#aws_dynamodb_table_export: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dynamodb_table_export")
	close({
		arn?:                   string
		billed_size_in_bytes?:  number
		end_time?:              string
		export_format?:         string
		export_status?:         string
		export_time?:           string
		export_type?:           string
		id?:                    string
		item_count?:            number
		manifest_files_s3_key?: string
		incremental_export_specification?: matchN(1, [#incremental_export_specification, list.MaxItems(1) & [...#incremental_export_specification]])
		region?:            string
		s3_bucket!:         string
		s3_bucket_owner?:   string
		s3_prefix?:         string
		timeouts?:          #timeouts
		s3_sse_algorithm?:  string
		s3_sse_kms_key_id?: string
		start_time?:        string
		table_arn!:         string
	})

	#incremental_export_specification: close({
		export_from_time?: string
		export_to_time?:   string
		export_view_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
