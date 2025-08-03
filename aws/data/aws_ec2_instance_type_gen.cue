package data

#aws_ec2_instance_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_instance_type")
	close({
		auto_recovery_supported?: bool
		bandwidth_weightings?: [...string]
		bare_metal?: bool
		boot_modes?: [...string]
		burstable_performance_supported?:     bool
		current_generation?:                  bool
		dedicated_hosts_supported?:           bool
		default_cores?:                       number
		default_network_card_index?:          number
		default_threads_per_core?:            number
		default_vcpus?:                       number
		ebs_encryption_support?:              string
		ebs_nvme_support?:                    string
		ebs_optimized_support?:               string
		ebs_performance_baseline_bandwidth?:  number
		ebs_performance_baseline_iops?:       number
		ebs_performance_baseline_throughput?: number
		ebs_performance_maximum_bandwidth?:   number
		ebs_performance_maximum_iops?:        number
		ebs_performance_maximum_throughput?:  number
		efa_maximum_interfaces?:              number
		efa_supported?:                       bool
		ena_srd_supported?:                   bool
		ena_support?:                         string
		encryption_in_transit_supported?:     bool
		fpgas?: [...close({
			count?:        number
			manufacturer?: string
			memory_size?:  number
			name?:         string
		})]
		free_tier_eligible?: bool
		gpus?: [...close({
			count?:        number
			manufacturer?: string
			memory_size?:  number
			name?:         string
		})]
		hibernation_supported?: bool
		hypervisor?:            string
		id?:                    string
		inference_accelerators?: [...close({
			count?:        number
			manufacturer?: string
			memory_size?:  number
			name?:         string
		})]
		timeouts?: #timeouts
		instance_disks?: [...close({
			count?: number
			size?:  number
			type?:  string
		})]
		instance_storage_supported?:           bool
		instance_type!:                        string
		ipv6_supported?:                       bool
		maximum_ipv4_addresses_per_interface?: number
		maximum_ipv6_addresses_per_interface?: number
		maximum_network_cards?:                number
		maximum_network_interfaces?:           number
		media_accelerators?: [...close({
			count?:        number
			manufacturer?: string
			memory_size?:  number
			name?:         string
		})]
		memory_size?: number
		network_cards?: [...close({
			baseline_bandwidth?: number
			index?:              number
			maximum_interfaces?: number
			peak_bandwidth?:     number
			performance?:        string
		})]
		network_performance?: string
		neuron_devices?: [...close({
			core_count?:   number
			core_version?: number
			count?:        number
			memory_size?:  number
			name?:         string
		})]
		nitro_enclaves_support?: string
		nitro_tpm_support?:      string
		nitro_tpm_supported_versions?: [...string]
		phc_support?: string
		region?:      string
		supported_architectures?: [...string]
		supported_cpu_features?: [...string]
		supported_placement_strategies?: [...string]
		supported_root_device_types?: [...string]
		supported_usages_classes?: [...string]
		supported_virtualization_types?: [...string]
		sustained_clock_speed?:      number
		total_fpga_memory?:          number
		total_gpu_memory?:           number
		total_inference_memory?:     number
		total_instance_storage?:     number
		total_media_memory?:         number
		total_neuron_device_memory?: number
		valid_cores?: [...number]
		valid_threads_per_core?: [...number]
	})

	#timeouts: close({
		read?: string
	})
}
