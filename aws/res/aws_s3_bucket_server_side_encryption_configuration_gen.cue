package res

import "list"

#aws_s3_bucket_server_side_encryption_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_server_side_encryption_configuration")
	close({
		bucket!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		expected_bucket_owner?: string
		id?:                    string
		rule?: matchN(1, [#rule, [_, ...] & [...#rule]])
	})

	#rule: close({
		apply_server_side_encryption_by_default?: matchN(1, [_#defs."/$defs/rule/$defs/apply_server_side_encryption_by_default", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/apply_server_side_encryption_by_default"]])
		bucket_key_enabled?: bool
	})

	_#defs: "/$defs/rule/$defs/apply_server_side_encryption_by_default": close({
		kms_master_key_id?: string
		sse_algorithm!:     string
	})
}
