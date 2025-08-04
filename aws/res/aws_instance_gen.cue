package res

import "list"

#aws_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_instance")
	close({
		ami?:                                  string
		arn?:                                  string
		associate_public_ip_address?:          bool
		availability_zone?:                    string
		disable_api_stop?:                     bool
		disable_api_termination?:              bool
		ebs_optimized?:                        bool
		enable_primary_ipv6?:                  bool
		get_password_data?:                    bool
		hibernation?:                          bool
		host_id?:                              string
		host_resource_group_arn?:              string
		iam_instance_profile?:                 string
		id?:                                   string
		instance_initiated_shutdown_behavior?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		instance_lifecycle?: string
		instance_state?:     string
		instance_type?:      string
		ipv6_address_count?: number
		capacity_reservation_specification?: matchN(1, [#capacity_reservation_specification, list.MaxItems(1) & [...#capacity_reservation_specification]])
		ipv6_addresses?: [...string]
		key_name?:        string
		monitoring?:      bool
		outpost_arn?:     string
		password_data?:   string
		placement_group?: string
		cpu_options?: matchN(1, [#cpu_options, list.MaxItems(1) & [...#cpu_options]])
		placement_partition_number?:   number
		primary_network_interface_id?: string
		credit_specification?: matchN(1, [#credit_specification, list.MaxItems(1) & [...#credit_specification]])
		ebs_block_device?: matchN(1, [#ebs_block_device, [...#ebs_block_device]])
		private_dns?: string
		private_ip?:  string
		public_dns?:  string
		public_ip?:   string
		secondary_private_ips?: [...string]
		security_groups?: [...string]
		source_dest_check?:        bool
		spot_instance_request_id?: string
		subnet_id?:                string
		tags?: [string]:     string
		tags_all?: [string]: string
		enclave_options?: matchN(1, [#enclave_options, list.MaxItems(1) & [...#enclave_options]])
		tenancy?:          string
		user_data?:        string
		user_data_base64?: string
		ephemeral_block_device?: matchN(1, [#ephemeral_block_device, [...#ephemeral_block_device]])
		instance_market_options?: matchN(1, [#instance_market_options, list.MaxItems(1) & [...#instance_market_options]])
		launch_template?: matchN(1, [#launch_template, list.MaxItems(1) & [...#launch_template]])
		maintenance_options?: matchN(1, [#maintenance_options, list.MaxItems(1) & [...#maintenance_options]])
		user_data_replace_on_change?: bool
		volume_tags?: [string]: string
		vpc_security_group_ids?: [...string]
		metadata_options?: matchN(1, [#metadata_options, list.MaxItems(1) & [...#metadata_options]])
		network_interface?: matchN(1, [#network_interface, [...#network_interface]])
		private_dns_name_options?: matchN(1, [#private_dns_name_options, list.MaxItems(1) & [...#private_dns_name_options]])
		root_block_device?: matchN(1, [#root_block_device, list.MaxItems(1) & [...#root_block_device]])
		timeouts?: #timeouts
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

	#ebs_block_device: close({
		delete_on_termination?: bool
		device_name!:           string
		encrypted?:             bool
		iops?:                  number
		kms_key_id?:            string
		snapshot_id?:           string
		tags?: [string]:     string
		tags_all?: [string]: string
		throughput?:  number
		volume_id?:   string
		volume_size?: number
		volume_type?: string
	})

	#enclave_options: close({
		enabled?: bool
	})

	#ephemeral_block_device: close({
		device_name!:  string
		no_device?:    bool
		virtual_name?: string
	})

	#instance_market_options: close({
		spot_options?: matchN(1, [_#defs."/$defs/instance_market_options/$defs/spot_options", list.MaxItems(1) & [..._#defs."/$defs/instance_market_options/$defs/spot_options"]])
		market_type?: string
	})

	#launch_template: close({
		id?:      string
		name?:    string
		version?: string
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

	#network_interface: close({
		delete_on_termination?: bool
		device_index!:          number
		network_card_index?:    number
		network_interface_id!:  string
	})

	#private_dns_name_options: close({
		enable_resource_name_dns_a_record?:    bool
		enable_resource_name_dns_aaaa_record?: bool
		hostname_type?:                        string
	})

	#root_block_device: close({
		delete_on_termination?: bool
		device_name?:           string
		encrypted?:             bool
		iops?:                  number
		kms_key_id?:            string
		tags?: [string]:     string
		tags_all?: [string]: string
		throughput?:  number
		volume_id?:   string
		volume_size?: number
		volume_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/capacity_reservation_specification/$defs/capacity_reservation_target": close({
		capacity_reservation_id?:                 string
		capacity_reservation_resource_group_arn?: string
	})

	_#defs: "/$defs/instance_market_options/$defs/spot_options": close({
		instance_interruption_behavior?: string
		max_price?:                      string
		spot_instance_type?:             string
		valid_until?:                    string
	})
}
