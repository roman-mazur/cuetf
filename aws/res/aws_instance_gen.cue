package res

import "list"

#aws_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_instance")
	ami?:                                  string
	arn?:                                  string
	associate_public_ip_address?:          bool
	availability_zone?:                    string
	disable_api_stop?:                     bool
	disable_api_termination?:              bool
	ebs_optimized?:                        bool
	get_password_data?:                    bool
	hibernation?:                          bool
	host_id?:                              string
	host_resource_group_arn?:              string
	iam_instance_profile?:                 string
	id?:                                   string
	instance_initiated_shutdown_behavior?: string
	instance_lifecycle?:                   string
	instance_state?:                       string
	instance_type?:                        string
	ipv6_address_count?:                   number
	ipv6_addresses?: [...string]
	key_name?:                     string
	monitoring?:                   bool
	outpost_arn?:                  string
	password_data?:                string
	placement_group?:              string
	placement_partition_number?:   number
	primary_network_interface_id?: string
	private_dns?:                  string
	private_ip?:                   string
	public_dns?:                   string
	public_ip?:                    string
	secondary_private_ips?: [...string]
	security_groups?: [...string]
	source_dest_check?:        bool
	spot_instance_request_id?: string
	subnet_id?:                string
	tags?: [string]: string
	tags_all?: [string]: string
	tenancy?:                     string
	user_data?:                   string
	user_data_base64?:            string
	user_data_replace_on_change?: bool
	volume_tags?: [string]: string
	vpc_security_group_ids?: [...string]
	capacity_reservation_specification?: #capacity_reservation_specification | list.MaxItems(1) & [...#capacity_reservation_specification]
	cpu_options?:                        #cpu_options | list.MaxItems(1) & [...#cpu_options]
	credit_specification?:               #credit_specification | list.MaxItems(1) & [...#credit_specification]
	ebs_block_device?:                   #ebs_block_device | [...#ebs_block_device]
	enclave_options?:                    #enclave_options | list.MaxItems(1) & [...#enclave_options]
	ephemeral_block_device?:             #ephemeral_block_device | [...#ephemeral_block_device]
	instance_market_options?:            #instance_market_options | list.MaxItems(1) & [...#instance_market_options]
	launch_template?:                    #launch_template | list.MaxItems(1) & [...#launch_template]
	maintenance_options?:                #maintenance_options | list.MaxItems(1) & [...#maintenance_options]
	metadata_options?:                   #metadata_options | list.MaxItems(1) & [...#metadata_options]
	network_interface?:                  #network_interface | [...#network_interface]
	private_dns_name_options?:           #private_dns_name_options | list.MaxItems(1) & [...#private_dns_name_options]
	root_block_device?:                  #root_block_device | list.MaxItems(1) & [...#root_block_device]
	timeouts?:                           #timeouts

	#capacity_reservation_specification: {
		capacity_reservation_preference?: string
		capacity_reservation_target?:     #capacity_reservation_specification.#capacity_reservation_target | list.MaxItems(1) & [...#capacity_reservation_specification.#capacity_reservation_target]

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

	#ebs_block_device: {
		delete_on_termination?: bool
		device_name:            string
		encrypted?:             bool
		iops?:                  number
		kms_key_id?:            string
		snapshot_id?:           string
		tags?: [string]: string
		throughput?:  number
		volume_id?:   string
		volume_size?: number
		volume_type?: string
	}

	#enclave_options: enabled?: bool

	#ephemeral_block_device: {
		device_name:   string
		no_device?:    bool
		virtual_name?: string
	}

	#instance_market_options: {
		market_type?:  string
		spot_options?: #instance_market_options.#spot_options | list.MaxItems(1) & [...#instance_market_options.#spot_options]

		#spot_options: {
			instance_interruption_behavior?: string
			max_price?:                      string
			spot_instance_type?:             string
			valid_until?:                    string
		}
	}

	#launch_template: {
		id?:      string
		name?:    string
		version?: string
	}

	#maintenance_options: auto_recovery?: string

	#metadata_options: {
		http_endpoint?:               string
		http_protocol_ipv6?:          string
		http_put_response_hop_limit?: number
		http_tokens?:                 string
		instance_metadata_tags?:      string
	}

	#network_interface: {
		delete_on_termination?: bool
		device_index:           number
		network_card_index?:    number
		network_interface_id:   string
	}

	#private_dns_name_options: {
		enable_resource_name_dns_a_record?:    bool
		enable_resource_name_dns_aaaa_record?: bool
		hostname_type?:                        string
	}

	#root_block_device: {
		delete_on_termination?: bool
		device_name?:           string
		encrypted?:             bool
		iops?:                  number
		kms_key_id?:            string
		tags?: [string]: string
		throughput?:  number
		volume_id?:   string
		volume_size?: number
		volume_type?: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
