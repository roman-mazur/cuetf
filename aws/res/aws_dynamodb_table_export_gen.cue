package res

import "list"

#aws_dynamodb_table_export: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dynamodb_table_export")
	close({
		arn?:                  string
		billed_size_in_bytes?: number
		end_time?:             string
		export_format?:        string
		export_status?:        string
		export_time?:          string
		export_type?:          string
		id?:                   string
		item_count?:           number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		incremental_export_specification?: matchN(1, [#incremental_export_specification, list.MaxItems(1) & [...#incremental_export_specification]])
		timeouts?:              #timeouts
		manifest_files_s3_key?: string
		s3_bucket!:             string
		s3_bucket_owner?:       string
		s3_prefix?:             string
		s3_sse_algorithm?:      string
		s3_sse_kms_key_id?:     string
		start_time?:            string
		table_arn!:             string
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
