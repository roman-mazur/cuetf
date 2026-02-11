package res

import "list"

#aws_opensearch_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_opensearch_domain")
	close({
		access_policies?: string
		advanced_options?: [string]: string
		arn?:                string
		dashboard_endpoint?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                            string
		dashboard_endpoint_v2?:             string
		domain_endpoint_v2_hosted_zone_id?: string
		domain_id?:                         string
		domain_name!:                       string
		endpoint?:                          string
		advanced_security_options?: matchN(1, [#advanced_security_options, list.MaxItems(1) & [...#advanced_security_options]])
		endpoint_v2?: string
		aiml_options?: matchN(1, [#aiml_options, list.MaxItems(1) & [...#aiml_options]])
		engine_version?: string
		id?:             string
		auto_tune_options?: matchN(1, [#auto_tune_options, list.MaxItems(1) & [...#auto_tune_options]])
		ip_address_type?: string
		cluster_config?: matchN(1, [#cluster_config, list.MaxItems(1) & [...#cluster_config]])
		cognito_options?: matchN(1, [#cognito_options, list.MaxItems(1) & [...#cognito_options]])
		domain_endpoint_options?: matchN(1, [#domain_endpoint_options, list.MaxItems(1) & [...#domain_endpoint_options]])
		ebs_options?: matchN(1, [#ebs_options, list.MaxItems(1) & [...#ebs_options]])
		encrypt_at_rest?: matchN(1, [#encrypt_at_rest, list.MaxItems(1) & [...#encrypt_at_rest]])
		identity_center_options?: matchN(1, [#identity_center_options, list.MaxItems(1) & [...#identity_center_options]])
		log_publishing_options?: matchN(1, [#log_publishing_options, [...#log_publishing_options]])
		tags?: [string]:     string
		tags_all?: [string]: string
		node_to_node_encryption?: matchN(1, [#node_to_node_encryption, list.MaxItems(1) & [...#node_to_node_encryption]])
		off_peak_window_options?: matchN(1, [#off_peak_window_options, list.MaxItems(1) & [...#off_peak_window_options]])
		snapshot_options?: matchN(1, [#snapshot_options, list.MaxItems(1) & [...#snapshot_options]])
		software_update_options?: matchN(1, [#software_update_options, list.MaxItems(1) & [...#software_update_options]])
		timeouts?: #timeouts
		vpc_options?: matchN(1, [#vpc_options, list.MaxItems(1) & [...#vpc_options]])
	})

	#advanced_security_options: close({
		master_user_options?: matchN(1, [_#defs."/$defs/advanced_security_options/$defs/master_user_options", list.MaxItems(1) & [..._#defs."/$defs/advanced_security_options/$defs/master_user_options"]])
		anonymous_auth_enabled?:         bool
		enabled!:                        bool
		internal_user_database_enabled?: bool
	})

	#aiml_options: close({
		natural_language_query_generation_options?: matchN(1, [_#defs."/$defs/aiml_options/$defs/natural_language_query_generation_options", list.MaxItems(1) & [..._#defs."/$defs/aiml_options/$defs/natural_language_query_generation_options"]])
		s3_vectors_engine?: matchN(1, [_#defs."/$defs/aiml_options/$defs/s3_vectors_engine", list.MaxItems(1) & [..._#defs."/$defs/aiml_options/$defs/s3_vectors_engine"]])
		serverless_vector_acceleration?: matchN(1, [_#defs."/$defs/aiml_options/$defs/serverless_vector_acceleration", list.MaxItems(1) & [..._#defs."/$defs/aiml_options/$defs/serverless_vector_acceleration"]])
	})

	#auto_tune_options: close({
		maintenance_schedule?: matchN(1, [_#defs."/$defs/auto_tune_options/$defs/maintenance_schedule", [..._#defs."/$defs/auto_tune_options/$defs/maintenance_schedule"]])
		desired_state!:       string
		rollback_on_disable?: string
		use_off_peak_window?: bool
	})

	#cluster_config: close({
		dedicated_master_count?:        number
		dedicated_master_enabled?:      bool
		dedicated_master_type?:         string
		instance_count?:                number
		instance_type?:                 string
		multi_az_with_standby_enabled?: bool
		cold_storage_options?: matchN(1, [_#defs."/$defs/cluster_config/$defs/cold_storage_options", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/cold_storage_options"]])
		warm_count?: number
		node_options?: matchN(1, [_#defs."/$defs/cluster_config/$defs/node_options", [..._#defs."/$defs/cluster_config/$defs/node_options"]])
		zone_awareness_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/zone_awareness_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/zone_awareness_config"]])
		warm_enabled?:           bool
		warm_type?:              string
		zone_awareness_enabled?: bool
	})

	#cognito_options: close({
		enabled?:          bool
		identity_pool_id!: string
		role_arn!:         string
		user_pool_id!:     string
	})

	#domain_endpoint_options: close({
		custom_endpoint?:                 string
		custom_endpoint_certificate_arn?: string
		custom_endpoint_enabled?:         bool
		enforce_https?:                   bool
		tls_security_policy?:             string
	})

	#ebs_options: close({
		ebs_enabled!: bool
		iops?:        number
		throughput?:  number
		volume_size?: number
		volume_type?: string
	})

	#encrypt_at_rest: close({
		enabled!:    bool
		kms_key_id?: string
	})

	#identity_center_options: close({
		enabled_api_access?:           bool
		identity_center_instance_arn?: string
		roles_key?:                    string
		subject_key?:                  string
	})

	#log_publishing_options: close({
		cloudwatch_log_group_arn!: string
		enabled?:                  bool
		log_type!:                 string
	})

	#node_to_node_encryption: close({
		enabled!: bool
	})

	#off_peak_window_options: close({
		off_peak_window?: matchN(1, [_#defs."/$defs/off_peak_window_options/$defs/off_peak_window", list.MaxItems(1) & [..._#defs."/$defs/off_peak_window_options/$defs/off_peak_window"]])
		enabled?: bool
	})

	#snapshot_options: close({
		automated_snapshot_start_hour!: number
	})

	#software_update_options: close({
		auto_software_update_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc_options: close({
		availability_zones?: [...string]
		security_group_ids?: [...string]
		subnet_ids?: [...string]
		vpc_id?: string
	})

	_#defs: "/$defs/advanced_security_options/$defs/master_user_options": close({
		master_user_arn?:      string
		master_user_name?:     string
		master_user_password?: string
	})

	_#defs: "/$defs/aiml_options/$defs/natural_language_query_generation_options": close({
		desired_state?: string
	})

	_#defs: "/$defs/aiml_options/$defs/s3_vectors_engine": close({
		enabled?: bool
	})

	_#defs: "/$defs/aiml_options/$defs/serverless_vector_acceleration": close({
		enabled?: bool
	})

	_#defs: "/$defs/auto_tune_options/$defs/maintenance_schedule": close({
		duration!: matchN(1, [_#defs."/$defs/auto_tune_options/$defs/maintenance_schedule/$defs/duration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/auto_tune_options/$defs/maintenance_schedule/$defs/duration"]])
		cron_expression_for_recurrence!: string
		start_at!:                       string
	})

	_#defs: "/$defs/auto_tune_options/$defs/maintenance_schedule/$defs/duration": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/cluster_config/$defs/cold_storage_options": close({
		enabled?: bool
	})

	_#defs: "/$defs/cluster_config/$defs/node_options": close({
		node_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/node_options/$defs/node_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/node_options/$defs/node_config"]])
		node_type?: string
	})

	_#defs: "/$defs/cluster_config/$defs/node_options/$defs/node_config": close({
		count?:   number
		enabled?: bool
		type?:    string
	})

	_#defs: "/$defs/cluster_config/$defs/zone_awareness_config": close({
		availability_zone_count?: number
	})

	_#defs: "/$defs/off_peak_window_options/$defs/off_peak_window": close({
		window_start_time?: matchN(1, [_#defs."/$defs/off_peak_window_options/$defs/off_peak_window/$defs/window_start_time", list.MaxItems(1) & [..._#defs."/$defs/off_peak_window_options/$defs/off_peak_window/$defs/window_start_time"]])
	})

	_#defs: "/$defs/off_peak_window_options/$defs/off_peak_window/$defs/window_start_time": close({
		hours?:   number
		minutes?: number
	})
}
