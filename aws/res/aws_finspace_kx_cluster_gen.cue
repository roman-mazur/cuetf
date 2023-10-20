package res

import "list"

#aws_finspace_kx_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_finspace_kx_cluster")
	arn?:                  string
	availability_zone_id?: string
	az_mode:               string
	command_line_arguments?: [string]: string
	created_timestamp?:       string
	description?:             string
	environment_id:           string
	execution_role?:          string
	id?:                      string
	initialization_script?:   string
	last_modified_timestamp?: string
	name:                     string
	release_label:            string
	status?:                  string
	status_reason?:           string
	tags?: [string]: string
	tags_all?: [string]: string
	type:                            string
	auto_scaling_configuration?:     #auto_scaling_configuration | list.MaxItems(1) & [...#auto_scaling_configuration]
	cache_storage_configurations?:   #cache_storage_configurations | [...#cache_storage_configurations]
	capacity_configuration?:         #capacity_configuration | list.MaxItems(1) & [_, ...] & [...#capacity_configuration]
	code?:                           #code | list.MaxItems(1) & [...#code]
	database?:                       #database | [...#database]
	savedown_storage_configuration?: #savedown_storage_configuration | list.MaxItems(1) & [...#savedown_storage_configuration]
	timeouts?:                       #timeouts
	vpc_configuration?:              #vpc_configuration | list.MaxItems(1) & [_, ...] & [...#vpc_configuration]

	#auto_scaling_configuration: {
		auto_scaling_metric:        string
		max_node_count:             number
		metric_target:              number
		min_node_count:             number
		scale_in_cooldown_seconds:  number
		scale_out_cooldown_seconds: number
	}

	#cache_storage_configurations: {
		size: number
		type: string
	}

	#capacity_configuration: {
		node_count: number
		node_type:  string
	}

	#code: {
		s3_bucket:          string
		s3_key:             string
		s3_object_version?: string
	}

	#database: {
		changeset_id?:         string
		database_name:         string
		cache_configurations?: #database.#cache_configurations | [...#database.#cache_configurations]

		#cache_configurations: {
			cache_type: string
			db_paths?: [...string]
		}
	}

	#savedown_storage_configuration: {
		size: number
		type: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#vpc_configuration: {
		ip_address_type: string
		security_group_ids: [...string]
		subnet_ids: [...string]
		vpc_id: string
	}
}
