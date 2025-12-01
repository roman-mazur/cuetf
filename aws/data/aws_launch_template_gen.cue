package data

#aws_launch_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_launch_template")
	close({
		arn?: string
		block_device_mappings?: [...close({
			device_name?: string
			ebs?: [...close({
				delete_on_termination?:      string
				encrypted?:                  string
				iops?:                       number
				kms_key_id?:                 string
				snapshot_id?:                string
				throughput?:                 number
				volume_initialization_rate?: number
				volume_size?:                number
				volume_type?:                string
			})]
			no_device?:    string
			virtual_name?: string
		})]
		capacity_reservation_specification?: [...close({
			capacity_reservation_preference?: string
			capacity_reservation_target?: [...close({
				capacity_reservation_id?:                 string
				capacity_reservation_resource_group_arn?: string
			})]
		})]
		cpu_options?: [...close({
			amd_sev_snp?:      string
			core_count?:       number
			threads_per_core?: number
		})]
		credit_specification?: [...close({
			cpu_credits?: string
		})]
		default_version?: number
		description?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		disable_api_stop?:        bool
		disable_api_termination?: bool
		ebs_optimized?:           string
		enclave_options?: [...close({
			enabled?: bool
		})]
		hibernation_options?: [...close({
			configured?: bool
		})]
		iam_instance_profile?: [...close({
			arn?:  string
			name?: string
		})]
		id?:                                   string
		image_id?:                             string
		instance_initiated_shutdown_behavior?: string
		instance_market_options?: [...close({
			market_type?: string
			spot_options?: [...close({
				block_duration_minutes?:         number
				instance_interruption_behavior?: string
				max_price?:                      string
				spot_instance_type?:             string
				valid_until?:                    string
			})]
		})]
		instance_requirements?: [...close({
			accelerator_count?: [...close({
				max?: number
				min?: number
			})]
			accelerator_manufacturers?: [...string]
			accelerator_names?: [...string]
			accelerator_total_memory_mib?: [...close({
				max?: number
				min?: number
			})]
			accelerator_types?: [...string]
			allowed_instance_types?: [...string]
			bare_metal?: string
			baseline_ebs_bandwidth_mbps?: [...close({
				max?: number
				min?: number
			})]
			burstable_performance?: string
			cpu_manufacturers?: [...string]
			excluded_instance_types?: [...string]
			instance_generations?: [...string]
			local_storage?: string
			local_storage_types?: [...string]
			max_spot_price_as_percentage_of_optimal_on_demand_price?: number
			memory_gib_per_vcpu?: [...close({
				max?: number
				min?: number
			})]
			memory_mib?: [...close({
				max?: number
				min?: number
			})]
			network_bandwidth_gbps?: [...close({
				max?: number
				min?: number
			})]
			network_interface_count?: [...close({
				max?: number
				min?: number
			})]
			on_demand_max_price_percentage_over_lowest_price?: number
			require_hibernate_support?:                        bool
			spot_max_price_percentage_over_lowest_price?:      number
			total_local_storage_gb?: [...close({
				max?: number
				min?: number
			})]
			vcpu_count?: [...close({
				max?: number
				min?: number
			})]
		})]
		instance_type?:  string
		kernel_id?:      string
		key_name?:       string
		latest_version?: number
		license_specification?: [...close({
			license_configuration_arn?: string
		})]
		filter?: matchN(1, [#filter, [...#filter]])
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
		monitoring?: [...close({
			enabled?: bool
		})]
		name?: string
		network_interfaces?: [...close({
			associate_carrier_ip_address?: string
			associate_public_ip_address?:  string
			connection_tracking_specification?: [...close({
				tcp_established_timeout?: number
				udp_stream_timeout?:      number
				udp_timeout?:             number
			})]
			delete_on_termination?: string
			description?:           string
			device_index?:          number
			interface_type?:        string
			ipv4_address_count?:    number
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
		})]
		placement?: [...close({
			affinity?:                string
			availability_zone?:       string
			group_id?:                string
			group_name?:              string
			host_id?:                 string
			host_resource_group_arn?: string
			partition_number?:        number
			spread_domain?:           string
			tenancy?:                 string
		})]
		private_dns_name_options?: [...close({
			enable_resource_name_dns_a_record?:    bool
			enable_resource_name_dns_aaaa_record?: bool
			hostname_type?:                        string
		})]
		ram_disk_id?: string
		security_group_names?: [...string]
		tag_specifications?: [...close({
			resource_type?: string
			tags?: [string]: string
		})]
		tags?: [string]: string
		user_data?: string
		vpc_security_group_ids?: [...string]
		timeouts?: #timeouts
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
