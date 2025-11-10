package res

import "list"

#aws_s3control_bucket_lifecycle_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_bucket_lifecycle_configuration")
	close({
		rule!: matchN(1, [#rule, [_, ...] & [...#rule]])
		bucket!: string
		id?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#rule: close({
		abort_incomplete_multipart_upload?: matchN(1, [_#defs."/$defs/rule/$defs/abort_incomplete_multipart_upload", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/abort_incomplete_multipart_upload"]])
		expiration?: matchN(1, [_#defs."/$defs/rule/$defs/expiration", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/expiration"]])
		filter?: matchN(1, [_#defs."/$defs/rule/$defs/filter", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/filter"]])
		id!:     string
		status?: string
	})

	_#defs: "/$defs/rule/$defs/abort_incomplete_multipart_upload": close({
		days_after_initiation!: number
	})

	_#defs: "/$defs/rule/$defs/expiration": close({
		date?:                         string
		days?:                         number
		expired_object_delete_marker?: bool
	})

	_#defs: "/$defs/rule/$defs/filter": close({
		prefix?: string
		tags?: [string]: string
	})
}
