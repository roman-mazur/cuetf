package data

#aws_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_instance")
	close({
		ami?:                         string
		arn?:                         string
		associate_public_ip_address?: bool
		availability_zone?:           string
		credit_specification?: [...close({
			cpu_credits?: string
		})]
		disable_api_stop?:        bool
		disable_api_termination?: bool
		ebs_block_device?: [...close({
			delete_on_termination?: bool
			device_name?:           string
			encrypted?:             bool
			iops?:                  number
			kms_key_id?:            string
			snapshot_id?:           string
			tags?: [string]: string
			throughput?:  number
			volume_id?:   string
			volume_size?: number
			volume_type?: string
		})]
		ebs_optimized?: bool
		enclave_options?: [...close({
			enabled?: bool
		})]
		ephemeral_block_device?: [...close({
			device_name?:  string
			no_device?:    bool
			virtual_name?: string
		})]
		get_password_data?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		get_user_data?:           bool
		host_id?:                 string
		host_resource_group_arn?: string
		iam_instance_profile?:    string
		id?:                      string
		instance_id?:             string
		instance_state?:          string
		instance_tags?: [string]: string
		instance_type?: string
		ipv6_addresses?: [...string]
		key_name?:    string
		launch_time?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?: #timeouts
		maintenance_options?: [...close({
			auto_recovery?: string
		})]
		metadata_options?: [...close({
			http_endpoint?:               string
			http_protocol_ipv6?:          string
			http_put_response_hop_limit?: number
			http_tokens?:                 string
			instance_metadata_tags?:      string
		})]
		monitoring?:                 bool
		network_interface_id?:       string
		outpost_arn?:                string
		password_data?:              string
		placement_group?:            string
		placement_group_id?:         string
		placement_partition_number?: number
		private_dns?:                string
		private_dns_name_options?: [...close({
			enable_resource_name_dns_a_record?:    bool
			enable_resource_name_dns_aaaa_record?: bool
			hostname_type?:                        string
		})]
		private_ip?: string
		public_dns?: string
		public_ip?:  string
		root_block_device?: [...close({
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
		})]
		secondary_private_ips?: [...string]
		security_groups?: [...string]
		source_dest_check?: bool
		subnet_id?:         string
		tags?: [string]: string
		tenancy?:          string
		user_data?:        string
		user_data_base64?: string
		vpc_security_group_ids?: [...string]
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
