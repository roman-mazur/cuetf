package res

import "list"

#aws_dynamodb_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dynamodb_table")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                      string
		billing_mode?:                string
		deletion_protection_enabled?: bool
		hash_key?:                    string
		id?:                          string
		name!:                        string
		range_key?:                   string
		read_capacity?:               number
		restore_date_time?:           string
		restore_source_name?:         string
		restore_source_table_arn?:    string
		restore_to_latest_time?:      bool
		attribute?: matchN(1, [#attribute, [...#attribute]])
		stream_arn?:       string
		stream_enabled?:   bool
		stream_label?:     string
		stream_view_type?: string
		table_class?:      string
		global_secondary_index?: matchN(1, [#global_secondary_index, [...#global_secondary_index]])
		tags?: [string]:     string
		tags_all?: [string]: string
		import_table?: matchN(1, [#import_table, list.MaxItems(1) & [...#import_table]])
		local_secondary_index?: matchN(1, [#local_secondary_index, [...#local_secondary_index]])
		on_demand_throughput?: matchN(1, [#on_demand_throughput, list.MaxItems(1) & [...#on_demand_throughput]])
		point_in_time_recovery?: matchN(1, [#point_in_time_recovery, list.MaxItems(1) & [...#point_in_time_recovery]])
		replica?: matchN(1, [#replica, [...#replica]])
		server_side_encryption?: matchN(1, [#server_side_encryption, list.MaxItems(1) & [...#server_side_encryption]])
		write_capacity?: number
		timeouts?:       #timeouts
		ttl?: matchN(1, [#ttl, list.MaxItems(1) & [...#ttl]])
		warm_throughput?: matchN(1, [#warm_throughput, list.MaxItems(1) & [...#warm_throughput]])
	})

	#attribute: close({
		name!: string
		type!: string
	})

	#global_secondary_index: close({
		on_demand_throughput?: matchN(1, [_#defs."/$defs/global_secondary_index/$defs/on_demand_throughput", list.MaxItems(1) & [..._#defs."/$defs/global_secondary_index/$defs/on_demand_throughput"]])
		hash_key!: string
		name!:     string
		non_key_attributes?: [...string]
		projection_type!: string
		range_key?:       string
		read_capacity?:   number
		write_capacity?:  number
		warm_throughput?: matchN(1, [_#defs."/$defs/global_secondary_index/$defs/warm_throughput", list.MaxItems(1) & [..._#defs."/$defs/global_secondary_index/$defs/warm_throughput"]])
	})

	#import_table: close({
		input_format_options?: matchN(1, [_#defs."/$defs/import_table/$defs/input_format_options", list.MaxItems(1) & [..._#defs."/$defs/import_table/$defs/input_format_options"]])
		s3_bucket_source!: matchN(1, [_#defs."/$defs/import_table/$defs/s3_bucket_source", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/import_table/$defs/s3_bucket_source"]])
		input_compression_type?: string
		input_format!:           string
	})

	#local_secondary_index: close({
		name!: string
		non_key_attributes?: [...string]
		projection_type!: string
		range_key!:       string
	})

	#on_demand_throughput: close({
		max_read_request_units?:  number
		max_write_request_units?: number
	})

	#point_in_time_recovery: close({
		enabled!:                 bool
		recovery_period_in_days?: number
	})

	#replica: close({
		arn?:                         string
		consistency_mode?:            string
		deletion_protection_enabled?: bool
		kms_key_arn?:                 string
		point_in_time_recovery?:      bool
		propagate_tags?:              bool
		region_name!:                 string
		stream_arn?:                  string
		stream_label?:                string
	})

	#server_side_encryption: close({
		enabled!:     bool
		kms_key_arn?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#ttl: close({
		attribute_name?: string
		enabled?:        bool
	})

	#warm_throughput: close({
		read_units_per_second?:  number
		write_units_per_second?: number
	})

	_#defs: "/$defs/global_secondary_index/$defs/on_demand_throughput": close({
		max_read_request_units?:  number
		max_write_request_units?: number
	})

	_#defs: "/$defs/global_secondary_index/$defs/warm_throughput": close({
		read_units_per_second?:  number
		write_units_per_second?: number
	})

	_#defs: "/$defs/import_table/$defs/input_format_options": close({
		csv?: matchN(1, [_#defs."/$defs/import_table/$defs/input_format_options/$defs/csv", list.MaxItems(1) & [..._#defs."/$defs/import_table/$defs/input_format_options/$defs/csv"]])
	})

	_#defs: "/$defs/import_table/$defs/input_format_options/$defs/csv": close({
		delimiter?: string
		header_list?: [...string]
	})

	_#defs: "/$defs/import_table/$defs/s3_bucket_source": close({
		bucket!:       string
		bucket_owner?: string
		key_prefix?:   string
	})
}
