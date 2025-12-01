package res

import "list"

#aws_s3_bucket_inventory: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3_bucket_inventory")
	close({
		bucket!:  string
		enabled?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		id?:                       string
		included_object_versions!: string
		name!:                     string
		destination!: matchN(1, [#destination, list.MaxItems(1) & [_, ...] & [...#destination]])
		optional_fields?: [...string]
		filter?: matchN(1, [#filter, list.MaxItems(1) & [...#filter]])
		schedule!: matchN(1, [#schedule, list.MaxItems(1) & [_, ...] & [...#schedule]])
	})

	#destination: close({
		bucket!: matchN(1, [_#defs."/$defs/destination/$defs/bucket", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/destination/$defs/bucket"]])
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
