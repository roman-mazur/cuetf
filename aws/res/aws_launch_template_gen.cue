package res

import "list"

#aws_launch_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_launch_template")
	arn?:                                  string
	default_version?:                      number
	description?:                          string
	disable_api_stop?:                     bool
	disable_api_termination?:              bool
	ebs_optimized?:                        string
	id?:                                   string
	image_id?:                             string
	instance_initiated_shutdown_behavior?: string
	instance_type?:                        string
	kernel_id?:                            string
	key_name?:                             string
	latest_version?:                       number
	name?:                                 string
	name_prefix?:                          string
	ram_disk_id?:                          string
	security_group_names?: [...string]
	tags?: [string]: string
	tags_all?: [string]: string
	update_default_version?: bool
	user_data?:              string
	vpc_security_group_ids?: [...string]
	block_device_mappings?: #block_device_mappings | [...#block_device_mappings]
	capacity_reservation_specification?: #capacity_reservation_specification | list.MaxItems(1) & [...#capacity_reservation_specification]
	cpu_options?: #cpu_options | list.MaxItems(1) & [...#cpu_options]
	credit_specification?: #credit_specification | list.MaxItems(1) & [...#credit_specification]
	elastic_gpu_specifications?: #elastic_gpu_specifications | [...#elastic_gpu_specifications]
	elastic_inference_accelerator?: #elastic_inference_accelerator | list.MaxItems(1) & [...#elastic_inference_accelerator]
	enclave_options?: #enclave_options | list.MaxItems(1) & [...#enclave_options]
	hibernation_options?: #hibernation_options | list.MaxItems(1) & [...#hibernation_options]
	iam_instance_profile?: #iam_instance_profile | list.MaxItems(1) & [...#iam_instance_profile]
	instance_market_options?: #instance_market_options | list.MaxItems(1) & [...#instance_market_options]
	instance_requirements?: #instance_requirements | list.MaxItems(1) & [...#instance_requirements]
	license_specification?: #license_specification | [...#license_specification]
	maintenance_options?: #maintenance_options | list.MaxItems(1) & [...#maintenance_options]
	metadata_options?: #metadata_options | list.MaxItems(1) & [...#metadata_options]
	monitoring?: #monitoring | list.MaxItems(1) & [...#monitoring]
	network_interfaces?: #network_interfaces | [...#network_interfaces]
	placement?: #placement | list.MaxItems(1) & [...#placement]
	private_dns_name_options?: #private_dns_name_options | list.MaxItems(1) & [...#private_dns_name_options]
	tag_specifications?: #tag_specifications | [...#tag_specifications]

	#block_device_mappings: {
		device_name?:  string
		no_device?:    string
		virtual_name?: string
		ebs?: #block_device_mappings.#ebs | list.MaxItems(1) & [...#block_device_mappings.#ebs]

		#ebs: {
			delete_on_termination?: string
			encrypted?:             string
			iops?:                  number
			kms_key_id?:            string
			snapshot_id?:           string
			throughput?:            number
			volume_size?:           number
			volume_type?:           string
		}
	}

	#capacity_reservation_specification: {
		capacity_reservation_preference?: string
		capacity_reservation_target?: #capacity_reservation_specification.#capacity_reservation_target | list.MaxItems(1) & [...#capacity_reservation_specification.#capacity_reservation_target]

		#capacity_reservation_target: {
			capacity_reservation_id?:                 string
			capacity_reservation_resource_group_arn?: string
		}
	}

	#cpu_options: {
		amd_sev_snp?:      string
		core_count?:       number
		threads_per_core?: number
	}

	#credit_specification: cpu_credits?: string

	#elastic_gpu_specifications: type!: string

	#elastic_inference_accelerator: type!: string

	#enclave_options: enabled?: bool

	#hibernation_options: configured!: bool

	#iam_instance_profile: {
		arn?:  string
		name?: string
	}

	#instance_market_options: {
		market_type?: string
		spot_options?: #instance_market_options.#spot_options | list.MaxItems(1) & [...#instance_market_options.#spot_options]

		#spot_options: {
			block_duration_minutes?:         number
			instance_interruption_behavior?: string
			max_price?:                      string
			spot_instance_type?:             string
			valid_until?:                    string
		}
	}

	#instance_requirements: {
		accelerator_manufacturers?: [...string]
		accelerator_names?: [...string]
		accelerator_types?: [...string]
		allowed_instance_types?: [...string]
		bare_metal?:            string
		burstable_performance?: string
		cpu_manufacturers?: [...string]
		excluded_instance_types?: [...string]
		instance_generations?: [...string]
		local_storage?: string
		local_storage_types?: [...string]
		max_spot_price_as_percentage_of_optimal_on_demand_price?: number
		on_demand_max_price_percentage_over_lowest_price?:        number
		require_hibernate_support?:                               bool
		spot_max_price_percentage_over_lowest_price?:             number
		accelerator_count?: #instance_requirements.#accelerator_count | list.MaxItems(1) & [...#instance_requirements.#accelerator_count]
		accelerator_total_memory_mib?: #instance_requirements.#accelerator_total_memory_mib | list.MaxItems(1) & [...#instance_requirements.#accelerator_total_memory_mib]
		baseline_ebs_bandwidth_mbps?: #instance_requirements.#baseline_ebs_bandwidth_mbps | list.MaxItems(1) & [...#instance_requirements.#baseline_ebs_bandwidth_mbps]
		memory_gib_per_vcpu?: #instance_requirements.#memory_gib_per_vcpu | list.MaxItems(1) & [...#instance_requirements.#memory_gib_per_vcpu]
		memory_mib?: #instance_requirements.#memory_mib | list.MaxItems(1) & [_, ...] & [...#instance_requirements.#memory_mib]
		network_bandwidth_gbps?: #instance_requirements.#network_bandwidth_gbps | list.MaxItems(1) & [...#instance_requirements.#network_bandwidth_gbps]
		network_interface_count?: #instance_requirements.#network_interface_count | list.MaxItems(1) & [...#instance_requirements.#network_interface_count]
		total_local_storage_gb?: #instance_requirements.#total_local_storage_gb | list.MaxItems(1) & [...#instance_requirements.#total_local_storage_gb]
		vcpu_count?: #instance_requirements.#vcpu_count | list.MaxItems(1) & [_, ...] & [...#instance_requirements.#vcpu_count]

		#accelerator_count: {
			max?: number
			min?: number
		}

		#accelerator_total_memory_mib: {
			max?: number
			min?: number
		}

		#baseline_ebs_bandwidth_mbps: {
			max?: number
			min?: number
		}

		#memory_gib_per_vcpu: {
			max?: number
			min?: number
		}

		#memory_mib: {
			max?: number
			min!: number
		}

		#network_bandwidth_gbps: {
			max?: number
			min?: number
		}

		#network_interface_count: {
			max?: number
			min?: number
		}

		#total_local_storage_gb: {
			max?: number
			min?: number
		}

		#vcpu_count: {
			max?: number
			min!: number
		}
	}

	#license_specification: license_configuration_arn!: string

	#maintenance_options: auto_recovery?: string

	#metadata_options: {
		http_endpoint?:               string
		http_protocol_ipv6?:          string
		http_put_response_hop_limit?: number
		http_tokens?:                 string
		instance_metadata_tags?:      string
	}

	#monitoring: enabled?: bool

	#network_interfaces: {
		associate_carrier_ip_address?: string
		associate_public_ip_address?:  string
		delete_on_termination?:        string
		description?:                  string
		device_index?:                 number
		interface_type?:               string
		ipv4_address_count?:           number
		ipv4_addresses?: [...string]
		ipv4_prefix_count?: number
		ipv4_prefixes?: [...string]
		ipv6_address_count?: number
		ipv6_addresses?: [...string]
		ipv6_prefix_count?: number
		ipv6_prefixes?: [...string]
		network_card_index?:   number
		network_interface_id?: string
		primary_ipv6?:         string
		private_ip_address?:   string
		security_groups?: [...string]
		subnet_id?: string
	}

	#placement: {
		affinity?:                string
		availability_zone?:       string
		group_name?:              string
		host_id?:                 string
		host_resource_group_arn?: string
		partition_number?:        number
		spread_domain?:           string
		tenancy?:                 string
	}

	#private_dns_name_options: {
		enable_resource_name_dns_a_record?:    bool
		enable_resource_name_dns_aaaa_record?: bool
		hostname_type?:                        string
	}

	#tag_specifications: {
		resource_type?: string
		tags?: [string]: string
	}
}
