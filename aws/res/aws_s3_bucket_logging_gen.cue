package res

import "list"

#aws_s3_bucket_logging: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3_bucket_logging")
	close({
		bucket!:                string
		expected_bucket_owner?: string
		id?:                    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		target_bucket!: string
		target_prefix!: string
		target_grant?: matchN(1, [#target_grant, [...#target_grant]])
		target_object_key_format?: matchN(1, [#target_object_key_format, list.MaxItems(1) & [...#target_object_key_format]])
	})

	#target_grant: close({
		grantee!: matchN(1, [_#defs."/$defs/target_grant/$defs/grantee", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/target_grant/$defs/grantee"]])
		permission!: string
	})

	#target_object_key_format: close({
		partitioned_prefix?: matchN(1, [_#defs."/$defs/target_object_key_format/$defs/partitioned_prefix", list.MaxItems(1) & [..._#defs."/$defs/target_object_key_format/$defs/partitioned_prefix"]])
		simple_prefix?: matchN(1, [_#defs."/$defs/target_object_key_format/$defs/simple_prefix", list.MaxItems(1) & [..._#defs."/$defs/target_object_key_format/$defs/simple_prefix"]])
	})

	_#defs: "/$defs/target_grant/$defs/grantee": close({
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
