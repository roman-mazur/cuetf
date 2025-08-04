package res

import "list"

#aws_glue_security_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_security_configuration")
	close({
		encryption_configuration?: matchN(1, [#encryption_configuration, list.MaxItems(1) & [_, ...] & [...#encryption_configuration]])
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#encryption_configuration: close({
		cloudwatch_encryption?: matchN(1, [_#defs."/$defs/encryption_configuration/$defs/cloudwatch_encryption", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encryption_configuration/$defs/cloudwatch_encryption"]])
		job_bookmarks_encryption?: matchN(1, [_#defs."/$defs/encryption_configuration/$defs/job_bookmarks_encryption", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encryption_configuration/$defs/job_bookmarks_encryption"]])
		s3_encryption?: matchN(1, [_#defs."/$defs/encryption_configuration/$defs/s3_encryption", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encryption_configuration/$defs/s3_encryption"]])
	})

	_#defs: "/$defs/encryption_configuration/$defs/cloudwatch_encryption": close({
		cloudwatch_encryption_mode?: string
		kms_key_arn?:                string
	})

	_#defs: "/$defs/encryption_configuration/$defs/job_bookmarks_encryption": close({
		job_bookmarks_encryption_mode?: string
		kms_key_arn?:                   string
	})

	_#defs: "/$defs/encryption_configuration/$defs/s3_encryption": close({
		kms_key_arn?:        string
		s3_encryption_mode?: string
	})
}
