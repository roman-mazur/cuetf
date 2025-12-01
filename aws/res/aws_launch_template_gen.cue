package res

import "list"

#aws_launch_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_launch_template")
	close({
		arn?: string
		block_device_mappings?: matchN(1, [#block_device_mappings, [...#block_device_mappings]])
		default_version?:         number
		description?:             string
		disable_api_stop?:        bool
		disable_api_termination?: bool
		ebs_optimized?:           string
		id?:                      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                               string
		image_id?:                             string
		instance_initiated_shutdown_behavior?: string
		instance_type?:                        string
		kernel_id?:                            string
		key_name?:                             string
		latest_version?:                       number
		name?:                                 string
		name_prefix?:                          string
		capacity_reservation_specification?: matchN(1, [#capacity_reservation_specification, list.MaxItems(1) & [...#capacity_reservation_specification]])
		ram_disk_id?: string
		security_group_names?: [...string]
		cpu_options?: matchN(1, [#cpu_options, list.MaxItems(1) & [...#cpu_options]])
		tags?: [string]:     string
		tags_all?: [string]: string
		update_default_version?: bool
		user_data?:              string
		credit_specification?: matchN(1, [#credit_specification, list.MaxItems(1) & [...#credit_specification]])
		enclave_options?: matchN(1, [#enclave_options, list.MaxItems(1) & [...#enclave_options]])
		hibernation_options?: matchN(1, [#hibernation_options, list.MaxItems(1) & [...#hibernation_options]])
		iam_instance_profile?: matchN(1, [#iam_instance_profile, list.MaxItems(1) & [...#iam_instance_profile]])
		instance_market_options?: matchN(1, [#instance_market_options, list.MaxItems(1) & [...#instance_market_options]])
		instance_requirements?: matchN(1, [#instance_requirements, list.MaxItems(1) & [...#instance_requirements]])
		license_specification?: matchN(1, [#license_specification, [...#license_specification]])
		maintenance_options?: matchN(1, [#maintenance_options, list.MaxItems(1) & [...#maintenance_options]])
		vpc_security_group_ids?: [...string]
		metadata_options?: matchN(1, [#metadata_options, list.MaxItems(1) & [...#metadata_options]])
		monitoring?: matchN(1, [#monitoring, list.MaxItems(1) & [...#monitoring]])
		network_interfaces?: matchN(1, [#network_interfaces, [...#network_interfaces]])
		placement?: matchN(1, [#placement, list.MaxItems(1) & [...#placement]])
		private_dns_name_options?: matchN(1, [#private_dns_name_options, list.MaxItems(1) & [...#private_dns_name_options]])
		tag_specifications?: matchN(1, [#tag_specifications, [...#tag_specifications]])
	})

	#block_device_mappings: close({
		ebs?: matchN(1, [_#defs."/$defs/block_device_mappings/$defs/ebs", list.MaxItems(1) & [..._#defs."/$defs/block_device_mappings/$defs/ebs"]])
		device_name?:  string
		no_device?:    string
		virtual_name?: string
	})

	#capacity_reservation_specification: close({
		capacity_reservation_target?: matchN(1, [_#defs."/$defs/capacity_reservation_specification/$defs/capacity_reservation_target", list.MaxItems(1) & [..._#defs."/$defs/capacity_reservation_specification/$defs/capacity_reservation_target"]])
		capacity_reservation_preference?: string
	})

	#cpu_options: close({
		amd_sev_snp?:      string
		core_count?:       number
		threads_per_core?: number
	})

	#credit_specification: close({
		cpu_credits?: string
	})

	#enclave_options: close({
		enabled?: bool
	})

	#hibernation_options: close({
		configured!: bool
	})

	#iam_instance_profile: close({
		arn?:  string
		name?: string
	})

	#instance_market_options: close({
		spot_options?: matchN(1, [_#defs."/$defs/instance_market_options/$defs/spot_options", list.MaxItems(1) & [..._#defs."/$defs/instance_market_options/$defs/spot_options"]])
		market_type?: string
	})

	#instance_requirements: close({
		accelerator_manufacturers?: [...string]
		accelerator_names?: [...string]
		accelerator_count?: matchN(1, [_#defs."/$defs/instance_requirements/$defs/accelerator_count", list.MaxItems(1) & [..._#defs."/$defs/instance_requirements/$defs/accelerator_count"]])
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
		accelerator_total_memory_mib?: matchN(1, [_#defs."/$defs/instance_requirements/$defs/accelerator_total_memory_mib", list.MaxItems(1) & [..._#defs."/$defs/instance_requirements/$defs/accelerator_total_memory_mib"]])
		on_demand_max_price_percentage_over_lowest_price?: number
		require_hibernate_support?:                        bool
		spot_max_price_percentage_over_lowest_price?:      number
		baseline_ebs_bandwidth_mbps?: matchN(1, [_#defs."/$defs/instance_requirements/$defs/baseline_ebs_bandwidth_mbps", list.MaxItems(1) & [..._#defs."/$defs/instance_requirements/$defs/baseline_ebs_bandwidth_mbps"]])
		memory_gib_per_vcpu?: matchN(1, [_#defs."/$defs/instance_requirements/$defs/memory_gib_per_vcpu", list.MaxItems(1) & [..._#defs."/$defs/instance_requirements/$defs/memory_gib_per_vcpu"]])
		memory_mib!: matchN(1, [_#defs."/$defs/instance_requirements/$defs/memory_mib", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/instance_requirements/$defs/memory_mib"]])
		network_bandwidth_gbps?: matchN(1, [_#defs."/$defs/instance_requirements/$defs/network_bandwidth_gbps", list.MaxItems(1) & [..._#defs."/$defs/instance_requirements/$defs/network_bandwidth_gbps"]])
		network_interface_count?: matchN(1, [_#defs."/$defs/instance_requirements/$defs/network_interface_count", list.MaxItems(1) & [..._#defs."/$defs/instance_requirements/$defs/network_interface_count"]])
		total_local_storage_gb?: matchN(1, [_#defs."/$defs/instance_requirements/$defs/total_local_storage_gb", list.MaxItems(1) & [..._#defs."/$defs/instance_requirements/$defs/total_local_storage_gb"]])
		vcpu_count!: matchN(1, [_#defs."/$defs/instance_requirements/$defs/vcpu_count", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/instance_requirements/$defs/vcpu_count"]])
	})

	#license_specification: close({
		license_configuration_arn!: string
	})

	#maintenance_options: close({
		auto_recovery?: string
	})

	#metadata_options: close({
		http_endpoint?:               string
		http_protocol_ipv6?:          string
		http_put_response_hop_limit?: number
		http_tokens?:                 string
		instance_metadata_tags?:      string
	})

	#monitoring: close({
		enabled?: bool
	})

	#network_interfaces: close({
		associate_carrier_ip_address?: string
		connection_tracking_specification?: matchN(1, [_#defs."/$defs/network_interfaces/$defs/connection_tracking_specification", list.MaxItems(1) & [..._#defs."/$defs/network_interfaces/$defs/connection_tracking_specification"]])
		associate_public_ip_address?: string
		delete_on_termination?:       string
		description?:                 string
		device_index?:                number
		ena_srd_specification?: matchN(1, [_#defs."/$defs/network_interfaces/$defs/ena_srd_specification", list.MaxItems(1) & [..._#defs."/$defs/network_interfaces/$defs/ena_srd_specification"]])
		interface_type?:     string
		ipv4_address_count?: number
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
	})

	#placement: close({
		affinity?:                string
		availability_zone?:       string
		group_id?:                string
		group_name?:              string
		host_id?:                 string
		host_resource_group_arn?: string
		partition_number?:        number
		spread_domain?:           string
		tenancy?:                 string
	})

	#private_dns_name_options: close({
		enable_resource_name_dns_a_record?:    bool
		enable_resource_name_dns_aaaa_record?: bool
		hostname_type?:                        string
	})

	#tag_specifications: close({
		resource_type?: string
		tags?: [string]: string
	})

	_#defs: "/$defs/block_device_mappings/$defs/ebs": close({
		delete_on_termination?:      string
		encrypted?:                  string
		iops?:                       number
		kms_key_id?:                 string
		snapshot_id?:                string
		throughput?:                 number
		volume_initialization_rate?: number
		volume_size?:                number
		volume_type?:                string
	})

	_#defs: "/$defs/capacity_reservation_specification/$defs/capacity_reservation_target": close({
		capacity_reservation_id?:                 string
		capacity_reservation_resource_group_arn?: string
	})

	_#defs: "/$defs/instance_market_options/$defs/spot_options": close({
		block_duration_minutes?:         number
		instance_interruption_behavior?: string
		max_price?:                      string
		spot_instance_type?:             string
		valid_until?:                    string
	})

	_#defs: "/$defs/instance_requirements/$defs/accelerator_count": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/instance_requirements/$defs/accelerator_total_memory_mib": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/instance_requirements/$defs/baseline_ebs_bandwidth_mbps": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/instance_requirements/$defs/memory_gib_per_vcpu": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/instance_requirements/$defs/memory_mib": close({
		max?: number
		min!: number
	})

	_#defs: "/$defs/instance_requirements/$defs/network_bandwidth_gbps": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/instance_requirements/$defs/network_interface_count": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/instance_requirements/$defs/total_local_storage_gb": close({
		max?: number
		min?: number
	})

	_#defs: "/$defs/instance_requirements/$defs/vcpu_count": close({
		max?: number
		min!: number
	})

	_#defs: "/$defs/network_interfaces/$defs/connection_tracking_specification": close({
		tcp_established_timeout?: number
		udp_stream_timeout?:      number
		udp_timeout?:             number
	})

	_#defs: "/$defs/network_interfaces/$defs/ena_srd_specification": close({
		ena_srd_udp_specification?: matchN(1, [_#defs."/$defs/network_interfaces/$defs/ena_srd_specification/$defs/ena_srd_udp_specification", list.MaxItems(1) & [..._#defs."/$defs/network_interfaces/$defs/ena_srd_specification/$defs/ena_srd_udp_specification"]])
		ena_srd_enabled?: bool
	})

	_#defs: "/$defs/network_interfaces/$defs/ena_srd_specification/$defs/ena_srd_udp_specification": close({
		ena_srd_udp_enabled?: bool
	})
}
