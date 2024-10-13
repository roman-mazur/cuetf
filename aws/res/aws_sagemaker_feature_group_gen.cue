package res

import "list"

#aws_sagemaker_feature_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sagemaker_feature_group")
	arn?:                            string
	description?:                    string
	event_time_feature_name!:        string
	feature_group_name!:             string
	id?:                             string
	record_identifier_feature_name!: string
	role_arn!:                       string
	tags?: [string]:     string
	tags_all?: [string]: string
	feature_definition?: #feature_definition | list.MaxItems(2500) & [_, ...] & [...#feature_definition]
	offline_store_config?: #offline_store_config | list.MaxItems(1) & [...#offline_store_config]
	online_store_config?: #online_store_config | list.MaxItems(1) & [...#online_store_config]

	#feature_definition: {
		feature_name?: string
		feature_type?: string
	}

	#offline_store_config: {
		disable_glue_table_creation?: bool
		table_format?:                string
		data_catalog_config?: #offline_store_config.#data_catalog_config | list.MaxItems(1) & [...#offline_store_config.#data_catalog_config]
		s3_storage_config?: #offline_store_config.#s3_storage_config | list.MaxItems(1) & [_, ...] & [...#offline_store_config.#s3_storage_config]

		#data_catalog_config: {
			catalog?:    string
			database?:   string
			table_name?: string
		}

		#s3_storage_config: {
			kms_key_id?:             string
			resolved_output_s3_uri?: string
			s3_uri!:                 string
		}
	}

	#online_store_config: {
		enable_online_store?: bool
		storage_type?:        string
		security_config?: #online_store_config.#security_config | list.MaxItems(1) & [...#online_store_config.#security_config]
		ttl_duration?: #online_store_config.#ttl_duration | list.MaxItems(1) & [...#online_store_config.#ttl_duration]

		#security_config: kms_key_id?: string

		#ttl_duration: {
			unit?:  string
			value?: number
		}
	}
}
