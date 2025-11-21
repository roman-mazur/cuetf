package res

#aws_bedrockagent_knowledge_base: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrockagent_knowledge_base")
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
		vector_knowledge_base_configuration?: matchN(1, [_#defs."/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration", [..._#defs."/$defs/knowledge_base_configuration/$defs/vector_knowledge_base_configuration"]])
		type!: string
	})

	#storage_configuration: close({
		opensearch_serverless_configuration?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/opensearch_serverless_configuration", [..._#defs."/$defs/storage_configuration/$defs/opensearch_serverless_configuration"]])
		pinecone_configuration?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/pinecone_configuration", [..._#defs."/$defs/storage_configuration/$defs/pinecone_configuration"]])
		rds_configuration?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/rds_configuration", [..._#defs."/$defs/storage_configuration/$defs/rds_configuration"]])
		redis_enterprise_cloud_configuration?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/redis_enterprise_cloud_configuration", [..._#defs."/$defs/storage_configuration/$defs/redis_enterprise_cloud_configuration"]])
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

	_#defs: "/$defs/storage_configuration/$defs/opensearch_serverless_configuration": close({
		field_mapping?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/opensearch_serverless_configuration/$defs/field_mapping", [..._#defs."/$defs/storage_configuration/$defs/opensearch_serverless_configuration/$defs/field_mapping"]])
		collection_arn!:    string
		vector_index_name!: string
	})

	_#defs: "/$defs/storage_configuration/$defs/opensearch_serverless_configuration/$defs/field_mapping": close({
		metadata_field?: string
		text_field?:     string
		vector_field?:   string
	})

	_#defs: "/$defs/storage_configuration/$defs/pinecone_configuration": close({
		field_mapping?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/pinecone_configuration/$defs/field_mapping", [..._#defs."/$defs/storage_configuration/$defs/pinecone_configuration/$defs/field_mapping"]])
		connection_string!:      string
		credentials_secret_arn!: string
		namespace?:              string
	})

	_#defs: "/$defs/storage_configuration/$defs/pinecone_configuration/$defs/field_mapping": close({
		metadata_field?: string
		text_field?:     string
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
}
