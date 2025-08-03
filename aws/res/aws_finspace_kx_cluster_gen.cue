package res

import "list"

#aws_finspace_kx_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_finspace_kx_cluster")
	close({
		arn?:                  string
		availability_zone_id?: string
		auto_scaling_configuration?: matchN(1, [#auto_scaling_configuration, list.MaxItems(1) & [...#auto_scaling_configuration]])
		cache_storage_configurations?: matchN(1, [#cache_storage_configurations, [...#cache_storage_configurations]])
		capacity_configuration?: matchN(1, [#capacity_configuration, list.MaxItems(1) & [...#capacity_configuration]])
		code?: matchN(1, [#code, list.MaxItems(1) & [...#code]])
		database?: matchN(1, [#database, [...#database]])
		savedown_storage_configuration?: matchN(1, [#savedown_storage_configuration, list.MaxItems(1) & [...#savedown_storage_configuration]])
		scaling_group_configuration?: matchN(1, [#scaling_group_configuration, list.MaxItems(1) & [...#scaling_group_configuration]])
		az_mode!: string
		tickerplant_log_configuration?: matchN(1, [#tickerplant_log_configuration, [...#tickerplant_log_configuration]])
		timeouts?: #timeouts
		command_line_arguments?: [string]: string
		created_timestamp?:       string
		description?:             string
		environment_id!:          string
		execution_role?:          string
		id?:                      string
		initialization_script?:   string
		last_modified_timestamp?: string
		name!:                    string
		region?:                  string
		release_label!:           string
		status?:                  string
		status_reason?:           string
		vpc_configuration?: matchN(1, [#vpc_configuration, list.MaxItems(1) & [_, ...] & [...#vpc_configuration]])
		tags?: [string]:     string
		tags_all?: [string]: string
		type!: string
	})

	#auto_scaling_configuration: close({
		auto_scaling_metric!:        string
		max_node_count!:             number
		metric_target!:              number
		min_node_count!:             number
		scale_in_cooldown_seconds!:  number
		scale_out_cooldown_seconds!: number
	})

	#cache_storage_configurations: close({
		size!: number
		type!: string
	})

	#capacity_configuration: close({
		node_count!: number
		node_type!:  string
	})

	#code: close({
		s3_bucket!:         string
		s3_key!:            string
		s3_object_version?: string
	})

	#database: close({
		changeset_id?:  string
		database_name!: string
		dataview_name?: string
		cache_configurations?: matchN(1, [_#defs."/$defs/database/$defs/cache_configurations", [..._#defs."/$defs/database/$defs/cache_configurations"]])
	})

	#savedown_storage_configuration: close({
		size?:        number
		type?:        string
		volume_name?: string
	})

	#scaling_group_configuration: close({
		cpu?:                number
		memory_limit?:       number
		memory_reservation!: number
		node_count!:         number
		scaling_group_name!: string
	})

	#tickerplant_log_configuration: close({
		tickerplant_log_volumes!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc_configuration: close({
		ip_address_type!: string
		security_group_ids!: [...string]
		subnet_ids!: [...string]
		vpc_id!: string
	})

	_#defs: "/$defs/database/$defs/cache_configurations": close({
		cache_type!: string
		db_paths?: [...string]
	})
}
