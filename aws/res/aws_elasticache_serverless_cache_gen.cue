package res

#aws_elasticache_serverless_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elasticache_serverless_cache")
	close({
		arn?:                 string
		create_time?:         string
		daily_snapshot_time?: string
		description?:         string
		endpoint?: [...close({
			address?: string
			port?:    number
		})]
		engine!:               string
		full_engine_version?:  string
		id?:                   string
		kms_key_id?:           string
		major_engine_version?: string
		name!:                 string
		cache_usage_limits?: matchN(1, [#cache_usage_limits, [...#cache_usage_limits]])
		reader_endpoint?: [...close({
			address?: string
			port?:    number
		})]
		region?:   string
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
		create?: string
		delete?: string
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
