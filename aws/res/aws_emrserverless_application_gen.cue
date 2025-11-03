package res

import "list"

#aws_emrserverless_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_emrserverless_application")
	close({
		architecture?: string
		auto_start_configuration?: matchN(1, [#auto_start_configuration, list.MaxItems(1) & [...#auto_start_configuration]])
		arn?:  string
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		release_label!: string
		auto_stop_configuration?: matchN(1, [#auto_stop_configuration, list.MaxItems(1) & [...#auto_stop_configuration]])
		tags?: [string]:     string
		tags_all?: [string]: string
		type!: string
		image_configuration?: matchN(1, [#image_configuration, list.MaxItems(1) & [...#image_configuration]])
		initial_capacity?: matchN(1, [#initial_capacity, [...#initial_capacity]])
		interactive_configuration?: matchN(1, [#interactive_configuration, list.MaxItems(1) & [...#interactive_configuration]])
		maximum_capacity?: matchN(1, [#maximum_capacity, list.MaxItems(1) & [...#maximum_capacity]])
		monitoring_configuration?: matchN(1, [#monitoring_configuration, list.MaxItems(1) & [...#monitoring_configuration]])
		network_configuration?: matchN(1, [#network_configuration, list.MaxItems(1) & [...#network_configuration]])
		runtime_configuration?: matchN(1, [#runtime_configuration, [...#runtime_configuration]])
		scheduler_configuration?: matchN(1, [#scheduler_configuration, list.MaxItems(1) & [...#scheduler_configuration]])
	})

	#auto_start_configuration: close({
		enabled?: bool
	})

	#auto_stop_configuration: close({
		enabled?:              bool
		idle_timeout_minutes?: number
	})

	#image_configuration: close({
		image_uri!: string
	})

	#initial_capacity: close({
		initial_capacity_config?: matchN(1, [_#defs."/$defs/initial_capacity/$defs/initial_capacity_config", list.MaxItems(1) & [..._#defs."/$defs/initial_capacity/$defs/initial_capacity_config"]])
		initial_capacity_type!: string
	})

	#interactive_configuration: close({
		livy_endpoint_enabled?: bool
		studio_enabled?:        bool
	})

	#maximum_capacity: close({
		cpu!:    string
		disk?:   string
		memory!: string
	})

	#monitoring_configuration: close({
		cloudwatch_logging_configuration?: matchN(1, [_#defs."/$defs/monitoring_configuration/$defs/cloudwatch_logging_configuration", list.MaxItems(1) & [..._#defs."/$defs/monitoring_configuration/$defs/cloudwatch_logging_configuration"]])
		managed_persistence_monitoring_configuration?: matchN(1, [_#defs."/$defs/monitoring_configuration/$defs/managed_persistence_monitoring_configuration", list.MaxItems(1) & [..._#defs."/$defs/monitoring_configuration/$defs/managed_persistence_monitoring_configuration"]])
		prometheus_monitoring_configuration?: matchN(1, [_#defs."/$defs/monitoring_configuration/$defs/prometheus_monitoring_configuration", list.MaxItems(1) & [..._#defs."/$defs/monitoring_configuration/$defs/prometheus_monitoring_configuration"]])
		s3_monitoring_configuration?: matchN(1, [_#defs."/$defs/monitoring_configuration/$defs/s3_monitoring_configuration", list.MaxItems(1) & [..._#defs."/$defs/monitoring_configuration/$defs/s3_monitoring_configuration"]])
	})

	#network_configuration: close({
		security_group_ids?: [...string]
		subnet_ids?: [...string]
	})

	#runtime_configuration: close({
		classification!: string
		properties?: [string]: string
	})

	#scheduler_configuration: close({
		max_concurrent_runs?:   number
		queue_timeout_minutes?: number
	})

	_#defs: "/$defs/initial_capacity/$defs/initial_capacity_config": close({
		worker_configuration?: matchN(1, [_#defs."/$defs/initial_capacity/$defs/initial_capacity_config/$defs/worker_configuration", list.MaxItems(1) & [..._#defs."/$defs/initial_capacity/$defs/initial_capacity_config/$defs/worker_configuration"]])
		worker_count!: number
	})

	_#defs: "/$defs/initial_capacity/$defs/initial_capacity_config/$defs/worker_configuration": close({
		cpu!:    string
		disk?:   string
		memory!: string
	})

	_#defs: "/$defs/monitoring_configuration/$defs/cloudwatch_logging_configuration": close({
		log_types?: matchN(1, [_#defs."/$defs/monitoring_configuration/$defs/cloudwatch_logging_configuration/$defs/log_types", [..._#defs."/$defs/monitoring_configuration/$defs/cloudwatch_logging_configuration/$defs/log_types"]])
		enabled!:                bool
		encryption_key_arn?:     string
		log_group_name?:         string
		log_stream_name_prefix?: string
	})

	_#defs: "/$defs/monitoring_configuration/$defs/cloudwatch_logging_configuration/$defs/log_types": close({
		name!: string
		values!: [...string]
	})

	_#defs: "/$defs/monitoring_configuration/$defs/managed_persistence_monitoring_configuration": close({
		enabled?:            bool
		encryption_key_arn?: string
	})

	_#defs: "/$defs/monitoring_configuration/$defs/prometheus_monitoring_configuration": close({
		remote_write_url?: string
	})

	_#defs: "/$defs/monitoring_configuration/$defs/s3_monitoring_configuration": close({
		encryption_key_arn?: string
		log_uri?:            string
	})
}
