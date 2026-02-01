package res

#aws_bedrockagent_knowledge_base: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockagent_knowledge_base")
	close({
		arn?:         string
		created_at?:  string
		description?: string
		failure_reasons?: [...string]
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		knowledge_base_configuration?: matchN(1, [#knowledge_base_configuration, [...#knowledge_base_configuration]])
		role_arn!: string
		storage_configuration?: matchN(1, [#storage_configuration, [...#storage_configuration]])
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?:   #timeouts
		updated_at?: string
	})

	#knowledge_base_configuration: close({
		kendra_knowledge_base_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/kendra_knowledge_base_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/kendra_knowledge_base_configuration"]])
		sql_knowledge_base_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration"]])
		vector_knowledge_base_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration"]])
		type!: string
	})

	#storage_configuration: close({
		mongo_db_atlas_configuration?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/mongo_db_atlas_configuration", [..._#defs."/$defs/storage_configuration/$defs/mongo_db_atlas_configuration"]])
		neptune_analytics_configuration?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/neptune_analytics_configuration", [..._#defs."/$defs/storage_configuration/$defs/neptune_analytics_configuration"]])
		opensearch_managed_cluster_configuration?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/opensearch_managed_cluster_configuration", [..._#defs."/$defs/storage_configuration/$defs/opensearch_managed_cluster_configuration"]])
		opensearch_serverless_configuration?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/opensearch_serverless_configuration", [..._#defs."/$defs/storage_configuration/$defs/opensearch_serverless_configuration"]])
		pinecone_configuration?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/pinecone_configuration", [..._#defs."/$defs/storage_configuration/$defs/pinecone_configuration"]])
		rds_configuration?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/rds_configuration", [..._#defs."/$defs/storage_configuration/$defs/rds_configuration"]])
		redis_enterprise_cloud_configuration?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/redis_enterprise_cloud_configuration", [..._#defs."/$defs/storage_configuration/$defs/redis_enterprise_cloud_configuration"]])
		s3_vectors_configuration?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/s3_vectors_configuration", [..._#defs."/$defs/storage_configuration/$defs/s3_vectors_configuration"]])
		type!: string
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

	_#defs: "/$defs/knowledge_base_configuration/$defs/kendra_knowledge_base_configuration": close({
		kendra_index_arn!: string
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration": close({
		redshift_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration"]])
		type!: string
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration": close({
		query_engine_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_engine_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_engine_configuration"]])
		query_generation_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_generation_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_generation_configuration"]])
		storage_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/storage_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/storage_configuration"]])
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_engine_configuration": close({
		provisioned_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_engine_configuration/$defs/provisioned_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_engine_configuration/$defs/provisioned_configuration"]])
		serverless_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_engine_configuration/$defs/serverless_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_engine_configuration/$defs/serverless_configuration"]])
		type!: string
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_engine_configuration/$defs/provisioned_configuration": close({
		auth_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_engine_configuration/$defs/provisioned_configuration/$defs/auth_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_engine_configuration/$defs/provisioned_configuration/$defs/auth_configuration"]])
		cluster_identifier!: string
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_engine_configuration/$defs/provisioned_configuration/$defs/auth_configuration": close({
		database_user?:                string
		type!:                         string
		username_password_secret_arn?: string
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_engine_configuration/$defs/serverless_configuration": close({
		auth_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_engine_configuration/$defs/serverless_configuration/$defs/auth_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_engine_configuration/$defs/serverless_configuration/$defs/auth_configuration"]])
		workgroup_arn!: string
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_engine_configuration/$defs/serverless_configuration/$defs/auth_configuration": close({
		type!:                         string
		username_password_secret_arn?: string
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_generation_configuration": close({
		generation_context?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_generation_configuration/$defs/generation_context", [..._#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_generation_configuration/$defs/generation_context"]])
		execution_timeout_seconds?: number
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_generation_configuration/$defs/generation_context": close({
		curated_query?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_generation_configuration/$defs/generation_context/$defs/curated_query", [..._#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_generation_configuration/$defs/generation_context/$defs/curated_query"]])
		table?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_generation_configuration/$defs/generation_context/$defs/table", [..._#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_generation_configuration/$defs/generation_context/$defs/table"]])
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_generation_configuration/$defs/generation_context/$defs/curated_query": close({
		natural_language!: string
		sql!:              string
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_generation_configuration/$defs/generation_context/$defs/table": close({
		column?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_generation_configuration/$defs/generation_context/$defs/table/$defs/column", [..._#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_generation_configuration/$defs/generation_context/$defs/table/$defs/column"]])
		description?: string
		inclusion?:   string
		name!:        string
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/query_generation_configuration/$defs/generation_context/$defs/table/$defs/column": close({
		description?: string
		inclusion?:   string
		name?:        string
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/storage_configuration": close({
		aws_data_catalog_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/storage_configuration/$defs/aws_data_catalog_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/storage_configuration/$defs/aws_data_catalog_configuration"]])
		redshift_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/storage_configuration/$defs/redshift_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/storage_configuration/$defs/redshift_configuration"]])
		type!: string
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/storage_configuration/$defs/aws_data_catalog_configuration": close({
		table_names!: [...string]
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/sql_knowledge_base_configuration/$defs/redshift_configuration/$defs/storage_configuration/$defs/redshift_configuration": close({
		database_name!: string
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration": close({
		embedding_model_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration/$defs/embedding_model_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration/$defs/embedding_model_configuration"]])
		supplemental_data_storage_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration/$defs/supplemental_data_storage_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration/$defs/supplemental_data_storage_configuration"]])
		embedding_model_arn!: string
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration/$defs/embedding_model_configuration": close({
		bedrock_embedding_model_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration/$defs/embedding_model_configuration/$defs/bedrock_embedding_model_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration/$defs/embedding_model_configuration/$defs/bedrock_embedding_model_configuration"]])
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration/$defs/embedding_model_configuration/$defs/bedrock_embedding_model_configuration": close({
		dimensions?:          number
		embedding_data_type?: string
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration/$defs/supplemental_data_storage_configuration": close({
		storage_location?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration/$defs/supplemental_data_storage_configuration/$defs/storage_location", [..._#defs."/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration/$defs/supplemental_data_storage_configuration/$defs/storage_location"]])
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration/$defs/supplemental_data_storage_configuration/$defs/storage_location": close({
		s3_location?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration/$defs/supplemental_data_storage_configuration/$defs/storage_location/$defs/s3_location", [..._#defs."/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration/$defs/supplemental_data_storage_configuration/$defs/storage_location/$defs/s3_location"]])
		type!: string
	})

	_#defs: "/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration/$defs/supplemental_data_storage_configuration/$defs/storage_location/$defs/s3_location": close({
		uri!: string
	})

	_#defs: "/$defs/storage_configuration/$defs/mongo_db_atlas_configuration": close({
		field_mapping?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/mongo_db_atlas_configuration/$defs/field_mapping", [..._#defs."/$defs/storage_configuration/$defs/mongo_db_atlas_configuration/$defs/field_mapping"]])
		collection_name!:        string
		credentials_secret_arn!: string
		database_name!:          string
		endpoint!:               string
		endpoint_service_name?:  string
		text_index_name?:        string
		vector_index_name!:      string
	})

	_#defs: "/$defs/storage_configuration/$defs/mongo_db_atlas_configuration/$defs/field_mapping": close({
		metadata_field!: string
		text_field!:     string
		vector_field!:   string
	})

	_#defs: "/$defs/storage_configuration/$defs/neptune_analytics_configuration": close({
		field_mapping?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/neptune_analytics_configuration/$defs/field_mapping", [..._#defs."/$defs/storage_configuration/$defs/neptune_analytics_configuration/$defs/field_mapping"]])
		graph_arn!: string
	})

	_#defs: "/$defs/storage_configuration/$defs/neptune_analytics_configuration/$defs/field_mapping": close({
		metadata_field!: string
		text_field!:     string
	})

	_#defs: "/$defs/storage_configuration/$defs/opensearch_managed_cluster_configuration": close({
		field_mapping?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/opensearch_managed_cluster_configuration/$defs/field_mapping", [..._#defs."/$defs/storage_configuration/$defs/opensearch_managed_cluster_configuration/$defs/field_mapping"]])
		domain_arn!:        string
		domain_endpoint!:   string
		vector_index_name!: string
	})

	_#defs: "/$defs/storage_configuration/$defs/opensearch_managed_cluster_configuration/$defs/field_mapping": close({
		metadata_field!: string
		text_field!:     string
		vector_field!:   string
	})

	_#defs: "/$defs/storage_configuration/$defs/opensearch_serverless_configuration": close({
		field_mapping?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/opensearch_serverless_configuration/$defs/field_mapping", [..._#defs."/$defs/storage_configuration/$defs/opensearch_serverless_configuration/$defs/field_mapping"]])
		collection_arn!:    string
		vector_index_name!: string
	})

	_#defs: "/$defs/storage_configuration/$defs/opensearch_serverless_configuration/$defs/field_mapping": close({
		metadata_field!: string
		text_field!:     string
		vector_field!:   string
	})

	_#defs: "/$defs/storage_configuration/$defs/pinecone_configuration": close({
		field_mapping?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/pinecone_configuration/$defs/field_mapping", [..._#defs."/$defs/storage_configuration/$defs/pinecone_configuration/$defs/field_mapping"]])
		connection_string!:      string
		credentials_secret_arn!: string
		namespace?:              string
	})

	_#defs: "/$defs/storage_configuration/$defs/pinecone_configuration/$defs/field_mapping": close({
		metadata_field!: string
		text_field!:     string
	})

	_#defs: "/$defs/storage_configuration/$defs/rds_configuration": close({
		field_mapping?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/rds_configuration/$defs/field_mapping", [..._#defs."/$defs/storage_configuration/$defs/rds_configuration/$defs/field_mapping"]])
		credentials_secret_arn!: string
		database_name!:          string
		resource_arn!:           string
		table_name!:             string
	})

	_#defs: "/$defs/storage_configuration/$defs/rds_configuration/$defs/field_mapping": close({
		custom_metadata_field?: string
		metadata_field!:        string
		primary_key_field!:     string
		text_field!:            string
		vector_field!:          string
	})

	_#defs: "/$defs/storage_configuration/$defs/redis_enterprise_cloud_configuration": close({
		field_mapping?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/redis_enterprise_cloud_configuration/$defs/field_mapping", [..._#defs."/$defs/storage_configuration/$defs/redis_enterprise_cloud_configuration/$defs/field_mapping"]])
		credentials_secret_arn!: string
		endpoint!:               string
		vector_index_name!:      string
	})

	_#defs: "/$defs/storage_configuration/$defs/redis_enterprise_cloud_configuration/$defs/field_mapping": close({
		metadata_field?: string
		text_field?:     string
		vector_field?:   string
	})

	_#defs: "/$defs/storage_configuration/$defs/s3_vectors_configuration": close({
		index_arn?:         string
		index_name?:        string
		vector_bucket_arn?: string
	})
}
