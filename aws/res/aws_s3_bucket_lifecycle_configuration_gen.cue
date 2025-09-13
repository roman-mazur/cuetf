package res

#aws_s3_bucket_lifecycle_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_lifecycle_configuration")
	close({
		bucket!:                string
		expected_bucket_owner?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                                 string
		transition_default_minimum_object_size?: string
		rule?: matchN(1, [#rule, [...#rule]])
		timeouts?: #timeouts
	})

	#rule: close({
		abort_incomplete_multipart_upload?: matchN(1, [_#defs."/$defs/rule/$defs/abort_incomplete_multipart_upload", [..._#defs."/$defs/rule/$defs/abort_incomplete_multipart_upload"]])
		expiration?: matchN(1, [_#defs."/$defs/rule/$defs/expiration", [..._#defs."/$defs/rule/$defs/expiration"]])
		filter?: matchN(1, [_#defs."/$defs/rule/$defs/filter", [..._#defs."/$defs/rule/$defs/filter"]])
		noncurrent_version_expiration?: matchN(1, [_#defs."/$defs/rule/$defs/noncurrent_version_expiration", [..._#defs."/$defs/rule/$defs/noncurrent_version_expiration"]])
		noncurrent_version_transition?: matchN(1, [_#defs."/$defs/rule/$defs/noncurrent_version_transition", [..._#defs."/$defs/rule/$defs/noncurrent_version_transition"]])
		transition?: matchN(1, [_#defs."/$defs/rule/$defs/transition", [..._#defs."/$defs/rule/$defs/transition"]])
		id!:     string
		status!: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/rule/$defs/abort_incomplete_multipart_upload": close({
		days_after_initiation?: number
	})

	_#defs: "/$defs/rule/$defs/expiration": close({
		date?:                         string
		days?:                         number
		expired_object_delete_marker?: bool
	})

	_#defs: "/$defs/rule/$defs/filter": close({
		and?: matchN(1, [_#defs."/$defs/rule/$defs/filter/$defs/and", [..._#defs."/$defs/rule/$defs/filter/$defs/and"]])
		tag?: matchN(1, [_#defs."/$defs/rule/$defs/filter/$defs/tag", [..._#defs."/$defs/rule/$defs/filter/$defs/tag"]])
		object_size_greater_than?: number
		object_size_less_than?:    number
		prefix?:                   string
	})

	_#defs: "/$defs/rule/$defs/filter/$defs/and": close({
		object_size_greater_than?: number
		object_size_less_than?:    number
		prefix?:                   string
		tags?: [string]: string
	})

	_#defs: "/$defs/rule/$defs/filter/$defs/tag": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/rule/$defs/noncurrent_version_expiration": close({
		newer_noncurrent_versions?: number
		noncurrent_days!:           number
	})

	_#defs: "/$defs/rule/$defs/noncurrent_version_transition": close({
		newer_noncurrent_versions?: number
		noncurrent_days!:           number
		storage_class!:             string
	})

	_#defs: "/$defs/rule/$defs/transition": close({
		date?:          string
		days?:          number
		storage_class!: string
	})
}
