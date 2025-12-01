package res

#aws_elasticache_serverless_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_elasticache_serverless_cache")
	close({
		arn?:                 string
		create_time?:         string
		daily_snapshot_time?: string
		description?:         string
		endpoint?: [...close({
			address?: string
			port?:    number
		})]
		engine!:              string
		full_engine_version?: string
		id?:                  string
		kms_key_id?:          string
		cache_usage_limits?: matchN(1, [#cache_usage_limits, [...#cache_usage_limits]])
		major_engine_version?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		reader_endpoint?: [...close({
			address?: string
			port?:    number
		})]
		timeouts?: #timeouts
		security_group_ids?: [...string]
		snapshot_arns_to_restore?: [...string]
		snapshot_retention_limit?: number
		status?:                   string
		subnet_ids?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		user_group_id?: string
	})

	#cache_usage_limits: close({
		data_storage?: matchN(1, [_#defs."/$defs/cache_usage_limits/$defs/data_storage", [..._#defs."/$defs/cache_usage_limits/$defs/data_storage"]])
		ecpu_per_second?: matchN(1, [_#defs."/$defs/cache_usage_limits/$defs/ecpu_per_second", [..._#defs."/$defs/cache_usage_limits/$defs/ecpu_per_second"]])
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
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/cache_usage_limits/$defs/data_storage": close({
		maximum?: number
		minimum?: number
		unit!:    string
	})

	_#defs: "/$defs/cache_usage_limits/$defs/ecpu_per_second": close({
		maximum?: number
		minimum?: number
	})
}
