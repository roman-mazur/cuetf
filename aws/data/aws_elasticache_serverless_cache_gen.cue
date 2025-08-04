package data

#aws_elasticache_serverless_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elasticache_serverless_cache")
	close({
		arn?: string
		cache_usage_limits?: close({
			data_storage?: close({
				maximum?: number
				minimum?: number
				unit?:    string
			})
			ecpu_per_second?: close({
				maximum?: number
				minimum?: number
			})
		})
		create_time?:         string
		daily_snapshot_time?: string
		description?:         string
		endpoint?: close({
			address?: string
			port?:    number
		})
		engine?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		full_engine_version?:  string
		kms_key_id?:           string
		major_engine_version?: string
		name!:                 string
		reader_endpoint?: close({
			address?: string
			port?:    number
		})
		security_group_ids?: [...string]
		snapshot_retention_limit?: number
		status?:                   string
		subnet_ids?: [...string]
		user_group_id?: string
	})
}
