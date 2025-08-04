package res

import "list"

#aws_elasticsearch_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elasticsearch_domain")
	close({
		access_policies?: string
		advanced_options?: [string]: string
		arn?:                   string
		domain_id?:             string
		domain_name!:           string
		elasticsearch_version?: string
		endpoint?:              string
		id?:                    string
		kibana_endpoint?:       string
		region?:                string
		tags?: [string]:     string
		tags_all?: [string]: string
		advanced_security_options?: matchN(1, [#advanced_security_options, list.MaxItems(1) & [...#advanced_security_options]])
		auto_tune_options?: matchN(1, [#auto_tune_options, list.MaxItems(1) & [...#auto_tune_options]])
		cluster_config?: matchN(1, [#cluster_config, list.MaxItems(1) & [...#cluster_config]])
		cognito_options?: matchN(1, [#cognito_options, list.MaxItems(1) & [...#cognito_options]])
		domain_endpoint_options?: matchN(1, [#domain_endpoint_options, list.MaxItems(1) & [...#domain_endpoint_options]])
		ebs_options?: matchN(1, [#ebs_options, list.MaxItems(1) & [...#ebs_options]])
		encrypt_at_rest?: matchN(1, [#encrypt_at_rest, list.MaxItems(1) & [...#encrypt_at_rest]])
		log_publishing_options?: matchN(1, [#log_publishing_options, [...#log_publishing_options]])
		node_to_node_encryption?: matchN(1, [#node_to_node_encryption, list.MaxItems(1) & [...#node_to_node_encryption]])
		snapshot_options?: matchN(1, [#snapshot_options, list.MaxItems(1) & [...#snapshot_options]])
		timeouts?: #timeouts
		vpc_options?: matchN(1, [#vpc_options, list.MaxItems(1) & [...#vpc_options]])
	})

	#advanced_security_options: close({
		master_user_options?: matchN(1, [_#defs."/$defs/advanced_security_options/$defs/master_user_options", list.MaxItems(1) & [..._#defs."/$defs/advanced_security_options/$defs/master_user_options"]])
		enabled!:                        bool
		internal_user_database_enabled?: bool
	})

	#auto_tune_options: close({
		maintenance_schedule?: matchN(1, [_#defs."/$defs/auto_tune_options/$defs/maintenance_schedule", [..._#defs."/$defs/auto_tune_options/$defs/maintenance_schedule"]])
		desired_state!:       string
		rollback_on_disable?: string
	})

	#cluster_config: close({
		dedicated_master_count?:   number
		dedicated_master_enabled?: bool
		dedicated_master_type?:    string
		instance_count?:           number
		cold_storage_options?: matchN(1, [_#defs."/$defs/cluster_config/$defs/cold_storage_options", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/cold_storage_options"]])
		instance_type?:          string
		warm_count?:             number
		warm_enabled?:           bool
		warm_type?:              string
		zone_awareness_enabled?: bool
		zone_awareness_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/zone_awareness_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/zone_awareness_config"]])
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

	#log_publishing_options: close({
		cloudwatch_log_group_arn!: string
		enabled?:                  bool
		log_type!:                 string
	})

	#node_to_node_encryption: close({
		enabled!: bool
	})

	#snapshot_options: close({
		automated_snapshot_start_hour!: number
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

	_#defs: "/$defs/auto_tune_options/$defs/maintenance_schedule": close({
		duration?: matchN(1, [_#defs."/$defs/auto_tune_options/$defs/maintenance_schedule/$defs/duration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/auto_tune_options/$defs/maintenance_schedule/$defs/duration"]])
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

	_#defs: "/$defs/cluster_config/$defs/zone_awareness_config": close({
		availability_zone_count?: number
	})
}
