package res

import "list"

#aws_s3_bucket_inventory: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_inventory")
	close({
		bucket!: string
		destination?: matchN(1, [#destination, list.MaxItems(1) & [_, ...] & [...#destination]])
		enabled?:                  bool
		id?:                       string
		included_object_versions!: string
		name!:                     string
		optional_fields?: [...string]
		region?: string
		filter?: matchN(1, [#filter, list.MaxItems(1) & [...#filter]])
		schedule?: matchN(1, [#schedule, list.MaxItems(1) & [_, ...] & [...#schedule]])
	})

	#destination: close({
		bucket?: matchN(1, [_#defs."/$defs/destination/$defs/bucket", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/destination/$defs/bucket"]])
	})

	#filter: close({
		prefix?: string
	})

	#schedule: close({
		frequency!: string
	})

	_#defs: "/$defs/destination/$defs/bucket": close({
		encryption?: matchN(1, [_#defs."/$defs/destination/$defs/bucket/$defs/encryption", list.MaxItems(1) & [..._#defs."/$defs/destination/$defs/bucket/$defs/encryption"]])
		account_id?: string
		bucket_arn!: string
		format!:     string
		prefix?:     string
	})

	_#defs: "/$defs/destination/$defs/bucket/$defs/encryption": close({
		sse_kms?: matchN(1, [_#defs."/$defs/destination/$defs/bucket/$defs/encryption/$defs/sse_kms", list.MaxItems(1) & [..._#defs."/$defs/destination/$defs/bucket/$defs/encryption/$defs/sse_kms"]])
		sse_s3?: matchN(1, [_#defs."/$defs/destination/$defs/bucket/$defs/encryption/$defs/sse_s3", list.MaxItems(1) & [..._#defs."/$defs/destination/$defs/bucket/$defs/encryption/$defs/sse_s3"]])
	})

	_#defs: "/$defs/destination/$defs/bucket/$defs/encryption/$defs/sse_kms": close({
		key_id!: string
	})

	_#defs: "/$defs/destination/$defs/bucket/$defs/encryption/$defs/sse_s3": close({})
}
