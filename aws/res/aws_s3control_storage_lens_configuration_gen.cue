package res

import "list"

#aws_s3control_storage_lens_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_storage_lens_configuration")
	close({
		account_id?: string
		arn?:        string
		config_id!:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		tags?: [string]:     string
		tags_all?: [string]: string
		storage_lens_configuration?: matchN(1, [#storage_lens_configuration, list.MaxItems(1) & [_, ...] & [...#storage_lens_configuration]])
	})

	#storage_lens_configuration: close({
		account_level?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/account_level", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/storage_lens_configuration/$defs/account_level"]])
		aws_org?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/aws_org", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/aws_org"]])
		data_export?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/data_export", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/data_export"]])
		exclude?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/exclude", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/exclude"]])
		include?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/include", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/include"]])
		enabled!: bool
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/account_level": close({
		activity_metrics?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/activity_metrics", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/activity_metrics"]])
		advanced_cost_optimization_metrics?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/advanced_cost_optimization_metrics", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/advanced_cost_optimization_metrics"]])
		advanced_data_protection_metrics?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/advanced_data_protection_metrics", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/advanced_data_protection_metrics"]])
		bucket_level?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level"]])
		detailed_status_code_metrics?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/detailed_status_code_metrics", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/detailed_status_code_metrics"]])
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/account_level/$defs/activity_metrics": close({
		enabled?: bool
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/account_level/$defs/advanced_cost_optimization_metrics": close({
		enabled?: bool
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/account_level/$defs/advanced_data_protection_metrics": close({
		enabled?: bool
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level": close({
		activity_metrics?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/activity_metrics", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/activity_metrics"]])
		advanced_cost_optimization_metrics?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/advanced_cost_optimization_metrics", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/advanced_cost_optimization_metrics"]])
		advanced_data_protection_metrics?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/advanced_data_protection_metrics", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/advanced_data_protection_metrics"]])
		detailed_status_code_metrics?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/detailed_status_code_metrics", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/detailed_status_code_metrics"]])
		prefix_level?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/prefix_level", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/prefix_level"]])
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/activity_metrics": close({
		enabled?: bool
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/advanced_cost_optimization_metrics": close({
		enabled?: bool
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/advanced_data_protection_metrics": close({
		enabled?: bool
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/detailed_status_code_metrics": close({
		enabled?: bool
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/prefix_level": close({
		storage_metrics?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/prefix_level/$defs/storage_metrics", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/prefix_level/$defs/storage_metrics"]])
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/prefix_level/$defs/storage_metrics": close({
		selection_criteria?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/prefix_level/$defs/storage_metrics/$defs/selection_criteria", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/prefix_level/$defs/storage_metrics/$defs/selection_criteria"]])
		enabled?: bool
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/account_level/$defs/bucket_level/$defs/prefix_level/$defs/storage_metrics/$defs/selection_criteria": close({
		delimiter?:                    string
		max_depth?:                    number
		min_storage_bytes_percentage?: number
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/account_level/$defs/detailed_status_code_metrics": close({
		enabled?: bool
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/aws_org": close({
		arn!: string
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/data_export": close({
		cloud_watch_metrics?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/data_export/$defs/cloud_watch_metrics", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/data_export/$defs/cloud_watch_metrics"]])
		s3_bucket_destination?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/data_export/$defs/s3_bucket_destination", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/data_export/$defs/s3_bucket_destination"]])
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/data_export/$defs/cloud_watch_metrics": close({
		enabled!: bool
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/data_export/$defs/s3_bucket_destination": close({
		encryption?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/data_export/$defs/s3_bucket_destination/$defs/encryption", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/data_export/$defs/s3_bucket_destination/$defs/encryption"]])
		account_id!:            string
		arn!:                   string
		format!:                string
		output_schema_version!: string
		prefix?:                string
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/data_export/$defs/s3_bucket_destination/$defs/encryption": close({
		sse_kms?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/data_export/$defs/s3_bucket_destination/$defs/encryption/$defs/sse_kms", list.MaxItems(1) & [..._#defs."/$defs/storage_lens_configuration/$defs/data_export/$defs/s3_bucket_destination/$defs/encryption/$defs/sse_kms"]])
		sse_s3?: matchN(1, [_#defs."/$defs/storage_lens_configuration/$defs/data_export/$defs/s3_bucket_destination/$defs/encryption/$defs/sse_s3", [..._#defs."/$defs/storage_lens_configuration/$defs/data_export/$defs/s3_bucket_destination/$defs/encryption/$defs/sse_s3"]])
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/data_export/$defs/s3_bucket_destination/$defs/encryption/$defs/sse_kms": close({
		key_id!: string
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/data_export/$defs/s3_bucket_destination/$defs/encryption/$defs/sse_s3": close({})

	_#defs: "/$defs/storage_lens_configuration/$defs/exclude": close({
		buckets?: [...string]
		regions?: [...string]
	})

	_#defs: "/$defs/storage_lens_configuration/$defs/include": close({
		buckets?: [...string]
		regions?: [...string]
	})
}
