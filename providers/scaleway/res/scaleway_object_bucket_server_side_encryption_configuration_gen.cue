package res

import "list"

#scaleway_object_bucket_server_side_encryption_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_object_bucket_server_side_encryption_configuration")
	close({
		rule!: matchN(1, [#rule, [_, ...] & [...#rule]])

		// The bucket's name or regional ID.
		bucket!: string
		id?:     string

		// The region you want to attach the resource to
		region?: string
	})

	#rule: close({
		apply_server_side_encryption_by_default?: matchN(1, [_#defs."/$defs/rule/$defs/apply_server_side_encryption_by_default", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/apply_server_side_encryption_by_default"]])

		// Whether or not to use Scaleway Object Bucket Keys for SSE-KMS.
		bucket_key_enabled?: bool
	})

	_#defs: "/$defs/rule/$defs/apply_server_side_encryption_by_default": close({
		// Scaleway KMS master key ID used for the SSE-KMS encryption.
		// This can only be used when you set the value of sse_algorithm
		// as aws:kms. Will return an error if not this element is absent
		// while the sse_algorithm is aws:kms.
		kms_master_key_id?: string

		// Server-side encryption algorithm to use. Valid values are
		// 'AES256', 'aws:kms'
		sse_algorithm!: string
	})
}
