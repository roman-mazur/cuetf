package res

import "list"

#aws_spot_instance_request: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_spot_instance_request")
	close({
		ami?: string
		arn?: string
		capacity_reservation_specification?: matchN(1, [#capacity_reservation_specification, list.MaxItems(1) & [...#capacity_reservation_specification]])
		associate_public_ip_address?: bool
		availability_zone?:           string
		disable_api_stop?:            bool
		disable_api_termination?:     bool
		ebs_optimized?:               bool
		enable_primary_ipv6?:         bool
		force_destroy?:               bool
		cpu_options?: matchN(1, [#cpu_options, list.MaxItems(1) & [...#cpu_options]])
		get_password_data?:                    bool
		hibernation?:                          bool
		host_id?:                              string
		host_resource_group_arn?:              string
		iam_instance_profile?:                 string
		id?:                                   string
		instance_initiated_shutdown_behavior?: string
		instance_interruption_behavior?:       string
		instance_state?:                       string
		instance_type?:                        string
		ipv6_address_count?:                   number
		ipv6_addresses?: [...string]
		key_name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		launch_group?:               string
		monitoring?:                 bool
		outpost_arn?:                string
		password_data?:              string
		placement_group?:            string
		placement_group_id?:         string
		placement_partition_number?: number
		primary_network_interface?: [...close({
			delete_on_termination?: bool
			network_interface_id?:  string
		})]
		credit_specification?: matchN(1, [#credit_specification, list.MaxItems(1) & [...#credit_specification]])
		primary_network_interface_id?: string
		private_dns?:                  string
		private_ip?:                   string
		ebs_block_device?: matchN(1, [#ebs_block_device, [...#ebs_block_device]])
		public_dns?: string
		public_ip?:  string
		secondary_private_ips?: [...string]
		security_groups?: [...string]
		source_dest_check?:  bool
		spot_bid_status?:    string
		spot_instance_id?:   string
		spot_price?:         string
		spot_request_state?: string
		spot_type?:          string
		subnet_id?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
		tenancy?:                     string
		user_data?:                   string
		user_data_base64?:            string
		user_data_replace_on_change?: bool
		valid_from?:                  string
		valid_until?:                 string
		volume_tags?: [string]: string
		enclave_options?: matchN(1, [#enclave_options, list.MaxItems(1) & [...#enclave_options]])
		ephemeral_block_device?: matchN(1, [#ephemeral_block_device, [...#ephemeral_block_device]])
		launch_template?: matchN(1, [#launch_template, list.MaxItems(1) & [...#launch_template]])
		maintenance_options?: matchN(1, [#maintenance_options, list.MaxItems(1) & [...#maintenance_options]])
		metadata_options?: matchN(1, [#metadata_options, list.MaxItems(1) & [...#metadata_options]])
		vpc_security_group_ids?: [...string]
		network_interface?: matchN(1, [#network_interface, [...#network_interface]])
		wait_for_fulfillment?: bool
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
	})

	_#defs: "/$defs/capacity_reservation_specification/$defs/capacity_reservation_target": close({
		capacity_reservation_id?:                 string
		capacity_reservation_resource_group_arn?: string
	})
}
