package res

#aws_bedrockagent_data_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockagent_data_source")
	close({
		data_deletion_policy?: string
		data_source_id?:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		description?:       string
		id?:                string
		knowledge_base_id!: string
		name!:              string
		data_source_configuration?: matchN(1, [#data_source_configuration, [...#data_source_configuration]])
		server_side_encryption_configuration?: matchN(1, [#server_side_encryption_configuration, [...#server_side_encryption_configuration]])
		timeouts?: #timeouts
		vector_ingestion_configuration?: matchN(1, [#vector_ingestion_configuration, [...#vector_ingestion_configuration]])
	})

	#data_source_configuration: close({
		confluence_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/confluence_configuration", [..._#defs."/$defs/data_source_configuration/$defs/confluence_configuration"]])
		s3_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/s3_configuration", [..._#defs."/$defs/data_source_configuration/$defs/s3_configuration"]])
		salesforce_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/salesforce_configuration", [..._#defs."/$defs/data_source_configuration/$defs/salesforce_configuration"]])
		share_point_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/share_point_configuration", [..._#defs."/$defs/data_source_configuration/$defs/share_point_configuration"]])
		web_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/web_configuration", [..._#defs."/$defs/data_source_configuration/$defs/web_configuration"]])
		type!: string
	})

	#server_side_encryption_configuration: close({
		kms_key_arn?: string
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
	})

	#vector_ingestion_configuration: close({
		chunking_configuration?: matchN(1, [_#defs."/$defs/vector_ingestion_configuration/$defs/chunking_configuration", [..._#defs."/$defs/vector_ingestion_configuration/$defs/chunking_configuration"]])
		custom_transformation_configuration?: matchN(1, [_#defs."/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration", [..._#defs."/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration"]])
		parsing_configuration?: matchN(1, [_#defs."/$defs/vector_ingestion_configuration/$defs/parsing_configuration", [..._#defs."/$defs/vector_ingestion_configuration/$defs/parsing_configuration"]])
	})

	_#defs: "/$defs/data_source_configuration/$defs/confluence_configuration": close({
		crawler_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/confluence_configuration/$defs/crawler_configuration", [..._#defs."/$defs/data_source_configuration/$defs/confluence_configuration/$defs/crawler_configuration"]])
		source_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/confluence_configuration/$defs/source_configuration", [..._#defs."/$defs/data_source_configuration/$defs/confluence_configuration/$defs/source_configuration"]])
	})

	_#defs: "/$defs/data_source_configuration/$defs/confluence_configuration/$defs/crawler_configuration": close({
		filter_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/confluence_configuration/$defs/crawler_configuration/$defs/filter_configuration", [..._#defs."/$defs/data_source_configuration/$defs/confluence_configuration/$defs/crawler_configuration/$defs/filter_configuration"]])
	})

	_#defs: "/$defs/data_source_configuration/$defs/confluence_configuration/$defs/crawler_configuration/$defs/filter_configuration": close({
		pattern_object_filter?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/confluence_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter", [..._#defs."/$defs/data_source_configuration/$defs/confluence_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter"]])
		type!: string
	})

	_#defs: "/$defs/data_source_configuration/$defs/confluence_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter": close({
		filters?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/confluence_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter/$defs/filters", [..._#defs."/$defs/data_source_configuration/$defs/confluence_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter/$defs/filters"]])
	})

	_#defs: "/$defs/data_source_configuration/$defs/confluence_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter/$defs/filters": close({
		exclusion_filters?: [...string]
		inclusion_filters?: [...string]
		object_type!: string
	})

	_#defs: "/$defs/data_source_configuration/$defs/confluence_configuration/$defs/source_configuration": close({
		auth_type!:              string
		credentials_secret_arn!: string
		host_type!:              string
		host_url!:               string
	})

	_#defs: "/$defs/data_source_configuration/$defs/s3_configuration": close({
		bucket_arn!:              string
		bucket_owner_account_id?: string
		inclusion_prefixes?: [...string]
	})

	_#defs: "/$defs/data_source_configuration/$defs/salesforce_configuration": close({
		crawler_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/salesforce_configuration/$defs/crawler_configuration", [..._#defs."/$defs/data_source_configuration/$defs/salesforce_configuration/$defs/crawler_configuration"]])
		source_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/salesforce_configuration/$defs/source_configuration", [..._#defs."/$defs/data_source_configuration/$defs/salesforce_configuration/$defs/source_configuration"]])
	})

	_#defs: "/$defs/data_source_configuration/$defs/salesforce_configuration/$defs/crawler_configuration": close({
		filter_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/salesforce_configuration/$defs/crawler_configuration/$defs/filter_configuration", [..._#defs."/$defs/data_source_configuration/$defs/salesforce_configuration/$defs/crawler_configuration/$defs/filter_configuration"]])
	})

	_#defs: "/$defs/data_source_configuration/$defs/salesforce_configuration/$defs/crawler_configuration/$defs/filter_configuration": close({
		pattern_object_filter?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/salesforce_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter", [..._#defs."/$defs/data_source_configuration/$defs/salesforce_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter"]])
		type!: string
	})

	_#defs: "/$defs/data_source_configuration/$defs/salesforce_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter": close({
		filters?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/salesforce_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter/$defs/filters", [..._#defs."/$defs/data_source_configuration/$defs/salesforce_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter/$defs/filters"]])
	})

	_#defs: "/$defs/data_source_configuration/$defs/salesforce_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter/$defs/filters": close({
		exclusion_filters?: [...string]
		inclusion_filters?: [...string]
		object_type!: string
	})

	_#defs: "/$defs/data_source_configuration/$defs/salesforce_configuration/$defs/source_configuration": close({
		auth_type!:              string
		credentials_secret_arn!: string
		host_url!:               string
	})

	_#defs: "/$defs/data_source_configuration/$defs/share_point_configuration": close({
		crawler_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/share_point_configuration/$defs/crawler_configuration", [..._#defs."/$defs/data_source_configuration/$defs/share_point_configuration/$defs/crawler_configuration"]])
		source_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/share_point_configuration/$defs/source_configuration", [..._#defs."/$defs/data_source_configuration/$defs/share_point_configuration/$defs/source_configuration"]])
	})

	_#defs: "/$defs/data_source_configuration/$defs/share_point_configuration/$defs/crawler_configuration": close({
		filter_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/share_point_configuration/$defs/crawler_configuration/$defs/filter_configuration", [..._#defs."/$defs/data_source_configuration/$defs/share_point_configuration/$defs/crawler_configuration/$defs/filter_configuration"]])
	})

	_#defs: "/$defs/data_source_configuration/$defs/share_point_configuration/$defs/crawler_configuration/$defs/filter_configuration": close({
		pattern_object_filter?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/share_point_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter", [..._#defs."/$defs/data_source_configuration/$defs/share_point_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter"]])
		type!: string
	})

	_#defs: "/$defs/data_source_configuration/$defs/share_point_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter": close({
		filters?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/share_point_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter/$defs/filters", [..._#defs."/$defs/data_source_configuration/$defs/share_point_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter/$defs/filters"]])
	})

	_#defs: "/$defs/data_source_configuration/$defs/share_point_configuration/$defs/crawler_configuration/$defs/filter_configuration/$defs/pattern_object_filter/$defs/filters": close({
		exclusion_filters?: [...string]
		inclusion_filters?: [...string]
		object_type!: string
	})

	_#defs: "/$defs/data_source_configuration/$defs/share_point_configuration/$defs/source_configuration": close({
		auth_type!:              string
		credentials_secret_arn!: string
		domain!:                 string
		host_type!:              string
		site_urls!: [...string]
		tenant_id?: string
	})

	_#defs: "/$defs/data_source_configuration/$defs/web_configuration": close({
		crawler_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/web_configuration/$defs/crawler_configuration", [..._#defs."/$defs/data_source_configuration/$defs/web_configuration/$defs/crawler_configuration"]])
		source_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/web_configuration/$defs/source_configuration", [..._#defs."/$defs/data_source_configuration/$defs/web_configuration/$defs/source_configuration"]])
	})

	_#defs: "/$defs/data_source_configuration/$defs/web_configuration/$defs/crawler_configuration": close({
		crawler_limits?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/web_configuration/$defs/crawler_configuration/$defs/crawler_limits", [..._#defs."/$defs/data_source_configuration/$defs/web_configuration/$defs/crawler_configuration/$defs/crawler_limits"]])
		exclusion_filters?: [...string]
		inclusion_filters?: [...string]
		scope?:      string
		user_agent?: string
	})

	_#defs: "/$defs/data_source_configuration/$defs/web_configuration/$defs/crawler_configuration/$defs/crawler_limits": close({
		max_pages?:  number
		rate_limit?: number
	})

	_#defs: "/$defs/data_source_configuration/$defs/web_configuration/$defs/source_configuration": close({
		url_configuration?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/web_configuration/$defs/source_configuration/$defs/url_configuration", [..._#defs."/$defs/data_source_configuration/$defs/web_configuration/$defs/source_configuration/$defs/url_configuration"]])
	})

	_#defs: "/$defs/data_source_configuration/$defs/web_configuration/$defs/source_configuration/$defs/url_configuration": close({
		seed_urls?: matchN(1, [_#defs."/$defs/data_source_configuration/$defs/web_configuration/$defs/source_configuration/$defs/url_configuration/$defs/seed_urls", [..._#defs."/$defs/data_source_configuration/$defs/web_configuration/$defs/source_configuration/$defs/url_configuration/$defs/seed_urls"]])
	})

	_#defs: "/$defs/data_source_configuration/$defs/web_configuration/$defs/source_configuration/$defs/url_configuration/$defs/seed_urls": close({
		url?: string
	})

	_#defs: "/$defs/vector_ingestion_configuration/$defs/chunking_configuration": close({
		fixed_size_chunking_configuration?: matchN(1, [_#defs."/$defs/vector_ingestion_configuration/$defs/chunking_configuration/$defs/fixed_size_chunking_configuration", [..._#defs."/$defs/vector_ingestion_configuration/$defs/chunking_configuration/$defs/fixed_size_chunking_configuration"]])
		hierarchical_chunking_configuration?: matchN(1, [_#defs."/$defs/vector_ingestion_configuration/$defs/chunking_configuration/$defs/hierarchical_chunking_configuration", [..._#defs."/$defs/vector_ingestion_configuration/$defs/chunking_configuration/$defs/hierarchical_chunking_configuration"]])
		semantic_chunking_configuration?: matchN(1, [_#defs."/$defs/vector_ingestion_configuration/$defs/chunking_configuration/$defs/semantic_chunking_configuration", [..._#defs."/$defs/vector_ingestion_configuration/$defs/chunking_configuration/$defs/semantic_chunking_configuration"]])
		chunking_strategy!: string
	})

	_#defs: "/$defs/vector_ingestion_configuration/$defs/chunking_configuration/$defs/fixed_size_chunking_configuration": close({
		max_tokens!:         number
		overlap_percentage!: number
	})

	_#defs: "/$defs/vector_ingestion_configuration/$defs/chunking_configuration/$defs/hierarchical_chunking_configuration": close({
		level_configuration?: matchN(1, [_#defs."/$defs/vector_ingestion_configuration/$defs/chunking_configuration/$defs/hierarchical_chunking_configuration/$defs/level_configuration", [..._#defs."/$defs/vector_ingestion_configuration/$defs/chunking_configuration/$defs/hierarchical_chunking_configuration/$defs/level_configuration"]])
		overlap_tokens!: number
	})

	_#defs: "/$defs/vector_ingestion_configuration/$defs/chunking_configuration/$defs/hierarchical_chunking_configuration/$defs/level_configuration": close({
		max_tokens!: number
	})

	_#defs: "/$defs/vector_ingestion_configuration/$defs/chunking_configuration/$defs/semantic_chunking_configuration": close({
		breakpoint_percentile_threshold!: number
		buffer_size!:                     number
		max_token!:                       number
	})

	_#defs: "/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration": close({
		intermediate_storage?: matchN(1, [_#defs."/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration/$defs/intermediate_storage", [..._#defs."/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration/$defs/intermediate_storage"]])
		transformation?: matchN(1, [_#defs."/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration/$defs/transformation", [..._#defs."/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration/$defs/transformation"]])
	})

	_#defs: "/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration/$defs/intermediate_storage": close({
		s3_location?: matchN(1, [_#defs."/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration/$defs/intermediate_storage/$defs/s3_location", [..._#defs."/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration/$defs/intermediate_storage/$defs/s3_location"]])
	})

	_#defs: "/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration/$defs/intermediate_storage/$defs/s3_location": close({
		uri!: string
	})

	_#defs: "/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration/$defs/transformation": close({
		transformation_function?: matchN(1, [_#defs."/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration/$defs/transformation/$defs/transformation_function", [..._#defs."/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration/$defs/transformation/$defs/transformation_function"]])
		step_to_apply!: string
	})

	_#defs: "/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration/$defs/transformation/$defs/transformation_function": close({
		transformation_lambda_configuration?: matchN(1, [_#defs."/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration/$defs/transformation/$defs/transformation_function/$defs/transformation_lambda_configuration", [..._#defs."/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration/$defs/transformation/$defs/transformation_function/$defs/transformation_lambda_configuration"]])
	})

	_#defs: "/$defs/vector_ingestion_configuration/$defs/custom_transformation_configuration/$defs/transformation/$defs/transformation_function/$defs/transformation_lambda_configuration": close({
		lambda_arn!: string
	})

	_#defs: "/$defs/vector_ingestion_configuration/$defs/parsing_configuration": close({
		bedrock_foundation_model_configuration?: matchN(1, [_#defs."/$defs/vector_ingestion_configuration/$defs/parsing_configuration/$defs/bedrock_foundation_model_configuration", [..._#defs."/$defs/vector_ingestion_configuration/$defs/parsing_configuration/$defs/bedrock_foundation_model_configuration"]])
		parsing_strategy!: string
	})

	_#defs: "/$defs/vector_ingestion_configuration/$defs/parsing_configuration/$defs/bedrock_foundation_model_configuration": close({
		parsing_prompt?: matchN(1, [_#defs."/$defs/vector_ingestion_configuration/$defs/parsing_configuration/$defs/bedrock_foundation_model_configuration/$defs/parsing_prompt", [..._#defs."/$defs/vector_ingestion_configuration/$defs/parsing_configuration/$defs/bedrock_foundation_model_configuration/$defs/parsing_prompt"]])
		model_arn!: string
	})

	_#defs: "/$defs/vector_ingestion_configuration/$defs/parsing_configuration/$defs/bedrock_foundation_model_configuration/$defs/parsing_prompt": close({
		parsing_prompt_string!: string
	})
}
