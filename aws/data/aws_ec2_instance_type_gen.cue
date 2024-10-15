package data

#aws_ec2_instance_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_instance_type")
	auto_recovery_supported?:             bool
	bare_metal?:                          bool
	burstable_performance_supported?:     bool
	current_generation?:                  bool
	dedicated_hosts_supported?:           bool
	default_cores?:                       number
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
	efa_supported?:                       bool
	ena_support?:                         string
	encryption_in_transit_supported?:     bool
	fpgas?: [...{
		count?:        number
		manufacturer?: string
		memory_size?:  number
		name?:         string
	}]
	free_tier_eligible?: bool
	gpus?: [...{
		count?:        number
		manufacturer?: string
		memory_size?:  number
		name?:         string
	}]
	hibernation_supported?: bool
	hypervisor?:            string
	id?:                    string
	inference_accelerators?: [...{
		count?:        number
		manufacturer?: string
		name?:         string
	}]
	instance_disks?: [...{
		count?: number
		size?:  number
		type?:  string
	}]
	instance_storage_supported?:           bool
	instance_type!:                        string
	ipv6_supported?:                       bool
	maximum_ipv4_addresses_per_interface?: number
	maximum_ipv6_addresses_per_interface?: number
	maximum_network_cards?:                number
	maximum_network_interfaces?:           number
	memory_size?:                          number
	network_performance?:                  string
	supported_architectures?: [...string]
	supported_placement_strategies?: [...string]
	supported_root_device_types?: [...string]
	supported_usages_classes?: [...string]
	supported_virtualization_types?: [...string]
	sustained_clock_speed?:  number
	total_fpga_memory?:      number
	total_gpu_memory?:       number
	total_instance_storage?: number
	valid_cores?: [...number]
	valid_threads_per_core?: [...number]
	timeouts?: #timeouts

	#timeouts: read?: string
}
