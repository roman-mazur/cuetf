package res

import "list"

#aws_sagemaker_feature_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_feature_group")
	close({
		arn?:                     string
		description?:             string
		event_time_feature_name!: string
		feature_group_name!:      string
		feature_definition!: matchN(1, [#feature_definition, list.MaxItems(2500) & [_, ...] & [...#feature_definition]])
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		offline_store_config?: matchN(1, [#offline_store_config, list.MaxItems(1) & [...#offline_store_config]])
		record_identifier_feature_name!: string
		role_arn!:                       string
		tags?: [string]: string
		online_store_config?: matchN(1, [#online_store_config, list.MaxItems(1) & [...#online_store_config]])
		tags_all?: [string]: string
		throughput_config?: matchN(1, [#throughput_config, list.MaxItems(1) & [...#throughput_config]])
	})

	#feature_definition: close({
		collection_config?: matchN(1, [_#defs."/$defs/feature_definition/$defs/collection_config", list.MaxItems(1) & [..._#defs."/$defs/feature_definition/$defs/collection_config"]])
		collection_type?: string
		feature_name?:    string
		feature_type?:    string
	})

	#offline_store_config: close({
		data_catalog_config?: matchN(1, [_#defs."/$defs/offline_store_config/$defs/data_catalog_config", list.MaxItems(1) & [..._#defs."/$defs/offline_store_config/$defs/data_catalog_config"]])
		s3_storage_config!: matchN(1, [_#defs."/$defs/offline_store_config/$defs/s3_storage_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/offline_store_config/$defs/s3_storage_config"]])
		disable_glue_table_creation?: bool
		table_format?:                string
	})

	#online_store_config: close({
		security_config?: matchN(1, [_#defs."/$defs/online_store_config/$defs/security_config", list.MaxItems(1) & [..._#defs."/$defs/online_store_config/$defs/security_config"]])
		ttl_duration?: matchN(1, [_#defs."/$defs/online_store_config/$defs/ttl_duration", list.MaxItems(1) & [..._#defs."/$defs/online_store_config/$defs/ttl_duration"]])
		enable_online_store?: bool
		storage_type?:        string
	})

	#throughput_config: close({
		provisioned_read_capacity_units?:  number
		provisioned_write_capacity_units?: number
		throughput_mode?:                  string
	})

	_#defs: "/$defs/feature_definition/$defs/collection_config": close({
		vector_config?: matchN(1, [_#defs."/$defs/feature_definition/$defs/collection_config/$defs/vector_config", list.MaxItems(1) & [..._#defs."/$defs/feature_definition/$defs/collection_config/$defs/vector_config"]])
	})

	_#defs: "/$defs/feature_definition/$defs/collection_config/$defs/vector_config": close({
		dimension?: number
	})

	_#defs: "/$defs/offline_store_config/$defs/data_catalog_config": close({
		catalog?:    string
		database?:   string
		table_name?: string
	})

	_#defs: "/$defs/offline_store_config/$defs/s3_storage_config": close({
		kms_key_id?:             string
		resolved_output_s3_uri?: string
		s3_uri!:                 string
	})

	_#defs: "/$defs/online_store_config/$defs/security_config": close({
		kms_key_id?: string
	})

	_#defs: "/$defs/online_store_config/$defs/ttl_duration": close({
		unit?:  string
		value?: number
	})
}
