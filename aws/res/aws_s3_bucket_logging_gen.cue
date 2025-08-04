package res

import "list"

#aws_s3_bucket_logging: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_logging")
	close({
		target_grant?: matchN(1, [#target_grant, [...#target_grant]])
		bucket!:                string
		expected_bucket_owner?: string
		id?:                    string
		region?:                string
		target_bucket!:         string
		target_prefix!:         string
		target_object_key_format?: matchN(1, [#target_object_key_format, list.MaxItems(1) & [...#target_object_key_format]])
	})

	#target_grant: close({
		grantee?: matchN(1, [_#defs."/$defs/target_grant/$defs/grantee", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/target_grant/$defs/grantee"]])
		permission!: string
	})

	#target_object_key_format: close({
		partitioned_prefix?: matchN(1, [_#defs."/$defs/target_object_key_format/$defs/partitioned_prefix", list.MaxItems(1) & [..._#defs."/$defs/target_object_key_format/$defs/partitioned_prefix"]])
		simple_prefix?: matchN(1, [_#defs."/$defs/target_object_key_format/$defs/simple_prefix", list.MaxItems(1) & [..._#defs."/$defs/target_object_key_format/$defs/simple_prefix"]])
	})

	_#defs: "/$defs/target_grant/$defs/grantee": close({
		display_name?:  string
		email_address?: string
		id?:            string
		type!:          string
		uri?:           string
	})

	_#defs: "/$defs/target_object_key_format/$defs/partitioned_prefix": close({
		partition_date_source!: string
	})

	_#defs: "/$defs/target_object_key_format/$defs/simple_prefix": close({})
}
