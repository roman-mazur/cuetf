package data

import "list"

#aws_dynamodb_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dynamodb_table")
	arn?: string
	attribute?: [...{
		name?: string
		type?: string
	}]
	billing_mode?:                string
	deletion_protection_enabled?: bool
	global_secondary_index?: [...{
		hash_key?: string
		name?:     string
		non_key_attributes?: [...string]
		projection_type?: string
		range_key?:       string
		read_capacity?:   number
		write_capacity?:  number
	}]
	hash_key?: string
	id?:       string
	local_secondary_index?: [...{
		name?: string
		non_key_attributes?: [...string]
		projection_type?: string
		range_key?:       string
	}]
	name: string
	point_in_time_recovery?: [...{
		enabled?: bool
	}]
	range_key?:     string
	read_capacity?: number
	replica?: [...{
		kms_key_arn?: string
		region_name?: string
	}]
	stream_arn?:       string
	stream_enabled?:   bool
	stream_label?:     string
	stream_view_type?: string
	table_class?:      string
	tags?: [string]: string
	ttl?: [...{
		attribute_name?: string
		enabled?:        bool
	}]
	write_capacity?:         number
	server_side_encryption?: #server_side_encryption | list.MaxItems(1) & [...#server_side_encryption]

	#server_side_encryption: {
		enabled?:     bool
		kms_key_arn?: string
	}
}
