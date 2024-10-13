package res

import "list"

#aws_opsworks_ganglia_layer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_opsworks_ganglia_layer")
	arn?:                     string
	auto_assign_elastic_ips?: bool
	auto_assign_public_ips?:  bool
	auto_healing?:            bool
	custom_configure_recipes?: [...string]
	custom_deploy_recipes?: [...string]
	custom_instance_profile_arn?: string
	custom_json?:                 string
	custom_security_group_ids?: [...string]
	custom_setup_recipes?: [...string]
	custom_shutdown_recipes?: [...string]
	custom_undeploy_recipes?: [...string]
	drain_elb_on_shutdown?:     bool
	elastic_load_balancer?:     string
	id?:                        string
	install_updates_on_boot?:   bool
	instance_shutdown_timeout?: number
	name?:                      string
	password!:                  string
	stack_id!:                  string
	system_packages?: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	url?:                         string
	use_ebs_optimized_instances?: bool
	username?:                    string
	cloudwatch_configuration?: #cloudwatch_configuration | list.MaxItems(1) & [...#cloudwatch_configuration]
	ebs_volume?: #ebs_volume | [...#ebs_volume]
	load_based_auto_scaling?: #load_based_auto_scaling | list.MaxItems(1) & [...#load_based_auto_scaling]

	#cloudwatch_configuration: {
		enabled?: bool
		log_streams?: #cloudwatch_configuration.#log_streams | [...#cloudwatch_configuration.#log_streams]

		#log_streams: {
			batch_count?:             number
			batch_size?:              number
			buffer_duration?:         number
			datetime_format?:         string
			encoding?:                string
			file!:                    string
			file_fingerprint_lines?:  string
			initial_position?:        string
			log_group_name!:          string
			multiline_start_pattern?: string
			time_zone?:               string
		}
	}

	#ebs_volume: {
		encrypted?:       bool
		iops?:            number
		mount_point!:     string
		number_of_disks!: number
		raid_level?:      string
		size!:            number
		type?:            string
	}

	#load_based_auto_scaling: {
		enable?: bool
		downscaling?: #load_based_auto_scaling.#downscaling | list.MaxItems(1) & [...#load_based_auto_scaling.#downscaling]
		upscaling?: #load_based_auto_scaling.#upscaling | list.MaxItems(1) & [...#load_based_auto_scaling.#upscaling]

		#downscaling: {
			alarms?: [...string]
			cpu_threshold?:        number
			ignore_metrics_time?:  number
			instance_count?:       number
			load_threshold?:       number
			memory_threshold?:     number
			thresholds_wait_time?: number
		}

		#upscaling: {
			alarms?: [...string]
			cpu_threshold?:        number
			ignore_metrics_time?:  number
			instance_count?:       number
			load_threshold?:       number
			memory_threshold?:     number
			thresholds_wait_time?: number
		}
	}
}
