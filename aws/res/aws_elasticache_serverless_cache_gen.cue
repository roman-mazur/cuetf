package res

#aws_elasticache_serverless_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_elasticache_serverless_cache")
	arn?:                 string
	create_time?:         string
	daily_snapshot_time?: string
	description?:         string
	endpoint?: [...{
		address?: string
		port?:    number
	}]
	engine!:               string
	full_engine_version?:  string
	id?:                   string
	kms_key_id?:           string
	major_engine_version?: string
	name!:                 string
	reader_endpoint?: [...{
		address?: string
		port?:    number
	}]
	security_group_ids?: [...string]
	snapshot_arns_to_restore?: [...string]
	snapshot_retention_limit?: number
	status?:                   string
	subnet_ids?: [...string]
	tags?: [string]: string
	tags_all?: [string]: string
	user_group_id?: string
	cache_usage_limits?: #cache_usage_limits | [...#cache_usage_limits]
	timeouts?: #timeouts

	#cache_usage_limits: {
		data_storage?: #cache_usage_limits.#data_storage | [...#cache_usage_limits.#data_storage]
		ecpu_per_second?: #cache_usage_limits.#ecpu_per_second | [...#cache_usage_limits.#ecpu_per_second]

		#data_storage: {
			maximum?: number
			minimum?: number
			unit!:    string
		}

		#ecpu_per_second: {
			maximum?: number
			minimum?: number
		}
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
